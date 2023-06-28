# 服务器作业提交

## [PBS](https://www.jianshu.com/p/ba1c892d8303)
 - 1. qsub (提交任务)
      - 参数 （可以加在提交任务的命令语句上，也可以以（#PBS -q work）的形式写在bash脚本里 （注意：#号不是注释，行首不能有空格））
        - q 指定队列/分区
        - N 任务名称
        - l nodes=1 节点数
        - -t 7-00:00:00  最大运行时间7天0h0min0s
 - 2. qdel JobId (取消任务)
      - [批量取消](./Script)  
 - 3. qstat (查看任务状态)
 - 4. e.g.
   - 终端命令
       ```shell
       qsub -q work tesh.sh
       ```
       ```shell
       qdel 1234
       ```
       ```shell
       qstat
       ```
   - bash脚本（注意：#号不是注释，行首不能有空格）
```shell
#!/bin/bash
#PBS -q cpu
#PBS -N  Run
#PBS -l nodes=1
#PBS -t 7-00:00:00

qsub run.sh
```
  
## [SLURM](https://slurm.schedmd.com/documentation.html)
 - 1. sbatch (提交任务)
       - 参数 （可以加在提交任务的命令语句上，也可以以（#SBATCH -p cpu）的形式写在bash脚本里 （注意：#号不是注释，行首不能有空格））
        - p 指定队列/分区
        - J 任务名称
        - N 节点数
        - --cpus-per-task=4 CPU核心
        - t 最大运行时间
 - 2. scancel JobId (取消任务) 
 - 3. squeue (查看任务状态)
 - 4. [e.g.](http://faculty.bicmr.pku.edu.cn/~wenzw/pages/slurm.html)
   - 终端命令 （注意：#号不是注释，行首不能有空格）
      ```shell
      sbatch -p work tesh.sh
      ```
      ```shell
      scancel 1234
      ```
      ```shell
      squeue
      ```
   - bash脚本（注意：#号不是注释，行首不能有空格）
```shell
#!/bin/bash
#SBATCH -p cpu
#SBATCH -J Run
#SBATCH -N 1
#SBATCH --cpus-per-task=4
#SBATCH -t 7-00:00:00  #最大运行时间7天0h0min0s

sbatch run.sh
```
  - 5. Fortran 生成脚本
```fortran
OPEN(999,FILE="Run.sh")
WRITE(999,'1a11')"#!/bin/bash"
WRITE(999,'1a14')"#SBATCH -p cpu
WRITE(999,*)"cd WorkingDirectory"
WIITE(999,*)"./Go.sh"
CLOSE(999)
CMD="sbatch Run.sh"
CALL SYSTEM(CMD)
```
