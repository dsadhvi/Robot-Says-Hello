#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/tracy/catkin_ws/src/villa_sound/villa_sound_localization"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/tracy/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/tracy/catkin_ws/install/lib/python2.7/dist-packages:/home/tracy/catkin_ws/build/villa_sound_localization/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/tracy/catkin_ws/build/villa_sound_localization" \
    "/usr/bin/python" \
    "/home/tracy/catkin_ws/src/villa_sound/villa_sound_localization/setup.py" \
    build --build-base "/home/tracy/catkin_ws/build/villa_sound_localization" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/tracy/catkin_ws/install" --install-scripts="/home/tracy/catkin_ws/install/bin"
