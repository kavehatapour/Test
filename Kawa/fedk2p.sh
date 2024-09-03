#!/bin/bash
#SBATCH --account=def-arashmoh
#SBATCH --gpus-per-node=1          # no. of gpu nodes
#SBATCH --mem=32000M               # memory per node (ex: 16G) you can get more 
#SBATCH --time=0-12:00 		   # time period you need for your code (it is 12 hours for example)
#SBATCH --mail-user=<jamal73sm@gmail.com> 	# replace with your email address to get emails to know when it is started or failed. 
#SBATCH --mail-type=ALL

cd /home/shahab33/projects/def-arashmoh/shahab33
module purge
module load python
source ~/FeDK2P/bin/activate  	# activate your environment

python Kawa/Plots.py   	# this is the direction and the name of your code
