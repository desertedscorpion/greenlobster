#!/bin/bash

mkdir ${HOME}/workspace &&
    mkdir ${HOME}/workspace/greenlobster &&
    git -C ${HOME}/workspace/greenlobster init &&
    git -C ${HOME}/workspace/greenlobster remote add origin git@github.com:desertedscorpion/greenlobster.git &&
    true