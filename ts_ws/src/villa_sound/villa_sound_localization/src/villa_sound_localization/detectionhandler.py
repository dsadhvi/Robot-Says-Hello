from threading import Event
import rospy
from hark_msgs.msg import HarkSource


class DetectionHandler(object):

    def __init__(self):
        self.__sub = None
        self.detected_azimuth = 0.
        self.move = False
        self.heard_source = Event()

    def stop(self):
        if self.__sub is not None:
            self.__sub.unregister()

    def start(self, rendezvous_event):
        self.rendezvous_event = rendezvous_event
        self.__sub = rospy.Subscriber("/HarkSource", HarkSource, self.__localization_callback, queue_size=1)

    def __localization_callback(self, data):
        if len(data.src) <= 0:
            return

        # Get max power source
        src = max(data.src, key=lambda x: x.power)

        azimuth = src.azimuth

        # if abs(azimuth - self.prev_azimuth) < 10.0:
        # print("REJECTED NEW ANGLE SINCE TOO CLOSE")
        #    return

        self.detected_azimuth = azimuth

        print("Detected source at (%f DEG) with power: %f" % (self.detected_azimuth, src.power))

        while not self.rendezvous_event.isSet():
            self.heard_source.set()

        self.heard_source.clear()
