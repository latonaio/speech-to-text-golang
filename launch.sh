#!/bin/bash

go mod download

export GOOGLE_APPLICATION_CREDENTIALS=$PWD/[your-project-credentials.json]

go build main.go

gst-launch-1.0 pulsesrc device=alsa_input.usb-C-Media_Electronics_Inc._USB_Audio_Device-00.analog-mono ! audioconvert ! audioresample ! audio/x-raw,channels=1,rate=16000 ! filesink location=/dev/stdout | ./main
