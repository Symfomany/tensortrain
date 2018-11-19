# Capture audio with a sampling rate of 16,000 Hz or higher.
# https://github.com/snipsco/snips-record-personal-hotword/blob/master/script_recording.py
# Frame size
#  A 100-millisecond frame size is recommended as a good tradeoff between latency and efficiency.


# The recognizer is designed to ignore background voices and noise without additional noise-canceling.
#  However, for optimal results, position the microphone as close to the user as possible, particularly when background noise is present.

# If you are capturing audio from more than one person,
# and each person is recorded on a separate channel,
# send each channel separately to get the best recognition results.
# However, if all speakers are mixed in a single channel recording, send the recording as is.

# Use word and phrase hints to add names and terms to the vocabulary and to boost the accuracy for specific words and phrases.

# For short queries or commands,
# use StreamingRecognize with single_utterance set to true.
# This optimizes the recognition for short utterances and also minimizes latency.

r=$(( $RANDOM % 10 ));
sox -d sounds/$r.wav