#!/bin/bash

rm -rf ./logs
mkdir ./logs

#sbatch  -p debug -D /lustre/gamma/huanghao/Geant4Code/build/ -o logs/FIMP.log -e logs/FIMPerr.log --time=0-00:20:00 --mem-per-cpu=2G -- ./run.sh
echo $1 $2
sbatch  -p main -D /lustre/gamma/huanghao/FIMP/Geant4Code/build/ -o logs/FIMP.log -e logs/FIMPerr.log --time=0-07:59:00 --mem-per-cpu=2G --array=$1-$2:1 -- ./run.sh
