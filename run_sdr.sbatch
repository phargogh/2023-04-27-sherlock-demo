#!/bin/bash

CONTAINER=ghcr.io/natcap/devstack@sha256:961c937a55ac8ff99219afeffe0f8509e4f142061cd3302c8133dfbe94574657
singularity run docker://$CONTAINER python run_sdr.py
