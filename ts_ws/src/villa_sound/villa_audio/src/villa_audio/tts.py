import rospy
from actionlib import SimpleActionClient
from tmc_msgs.msg import Voice, TalkRequestAction, TalkRequestGoal
from std_msgs.msg import String
import time


class TextToSpeech:
    ENGLISH = Voice.kEnglish

    def __init__(self, timeout=5.0):
        self.__ac = SimpleActionClient("/talk_request_action", TalkRequestAction)
        self.__ac.wait_for_server(rospy.Duration(timeout))

    """
    Speak a given sentence
    wait: Wait for the sentence to complete
    """
    def say(self, sentence, wait=False):
        goal = TalkRequestGoal()
        goal.data.sentence = sentence
        goal.data.language = Voice.kEnglish
        # goal.data.interrupting = True
        self.__ac.send_goal(goal)

        if wait:
            self.__ac.wait_for_result()