# 服务器作业提交

## [PBS](https://www.jianshu.com/p/ba1c892d8303)
 - 1. qsub (提交任务)
      - 参数 （可以加在提交任务的命令语句上，也可以以（#PBS -q work）的形式写在bash脚本里 （注意：#号不是注释，行首不能有空格））
        - q 指定队列/分区
        - N 任务名称
 - 2. qdel JobId (取消任务)
 - 3. qstat (查看任务状态)
 - 4. e.g.
       - qsub -q work tesh.sh
       - qdel 1234
       - qstat 
  
## [SLURM](https://slurm.schedmd.com/documentation.html)
