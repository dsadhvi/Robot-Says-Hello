#include <Python.h>
#include <boost/python.hpp>
#include <boost/python/suite/indexing/vector_indexing_suite.hpp>

#include <villa_audio/shared_microphone_stream.h>

typedef std::vector<float> AudioData;

typedef villa_audio::SharedMicrophoneStream SMS;
BOOST_PYTHON_MODULE(_shared_microphone_stream_wrapper_cpp)
{
    using namespace boost::python;

    class_<AudioData>("AudioData")
        .def(vector_indexing_suite<AudioData>());

    class_<SMS>("SharedMicrophoneStream", init<optional<uint>>())
        .def("read", &SMS::read)
    ;
}
