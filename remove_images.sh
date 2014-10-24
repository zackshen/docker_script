#!/bin/sh

sudo docker rmi `sudo docker images -q`
