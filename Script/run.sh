#!/bin/bash
spack load gcc@10.2.0%gcc@8.3.0 arch=linux-debian10-x86_64
#spack load geant4@10.5.1

echo "Hello!"
echo ${SLURM_ARRAY_TASK_ID}
/lustre/gamma/huanghao/FIMP/Geant4Code/build/main ${SLURM_ARRAY_TASK_ID} >> ./logs/${SLURM_ARRAY_TASK_ID}.txt
