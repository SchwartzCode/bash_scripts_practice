#!/bin/bash

#i know this can be done in one line with the pipe but I like logging all the info

iwlist wlan0 scan > wifi_log.txt
grep "ESSID" ./wifi_log.txt
