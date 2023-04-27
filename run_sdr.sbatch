#!/bin/bash
#
#SBATCH --time=4:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=8G
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jdouglass@stanford.edu
#SBATCH --partition=hns,normal

CONTAINER=ghcr.io/natcap/devstack@sha256:961c937a55ac8ff99219afeffe0f8509e4f142061cd3302c8133dfbe94574657
singularity run docker://$CONTAINER python run_sdr.py
