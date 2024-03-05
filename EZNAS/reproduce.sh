#!/bin/bash

# bash runjob.sh "python verify_scores.py --batch_size 16 " "nb2_cf10" 
# bash runjob.sh "python verify_scores.py --batch_size 16 --dataset cifar100" "nb2_cf100"
# bash runjob.sh "python verify_scores.py --batch_size 16 --dataset ImageNet16-120" "nb2_in"
# bash runjob.sh "python verify_scores.py --batch_size 16 --nds_space nds_amoeba --search_space NDS" "amoeba"
# bash runjob.sh "python verify_scores.py --batch_size 16 --nds_space nds_darts --search_space NDS" "darts"
# bash runjob.sh "python verify_scores.py --batch_size 16 --nds_space nds_pnas --search_space NDS" "pnas"
# bash runjob.sh "python verify_scores.py --batch_size 16 --nds_space nds_nasnet --search_space NDS" "nasnet"
# bash runjob.sh "python verify_scores.py --batch_size 16 --nds_space nds_enas --search_space NDS" "enas"
# bash runjob.sh "python verify_scores.py --batch_size 64 --search_space NATSBench" "nats"

export PROJ_HOME=/home/dongpeijie/workspace/EZNAS/EZNAS/

# NAS-Bench-201
# ## 78
# CUDA_VISIBLE_DEVICES=0 python verify_scores.py --batch_size 16 --n_samples 78 > ./logs/nasbench201_78.out

# ## 156
# CUDA_VISIBLE_DEVICES=0 python verify_scores.py --batch_size 16 --n_samples 156 > ./logs/nasbench201_156.out

# ## 469
# CUDA_VISIBLE_DEVICES=0 python verify_scores.py --batch_size 16 --n_samples 469 > ./logs/nasbench201_469.out

# ## 781 
# CUDA_VISIBLE_DEVICES=0 python verify_scores.py --batch_size 16 --n_samples 781 > ./logs/nasbench201_781.out

# ## 1563
# CUDA_VISIBLE_DEVICES=0 python verify_scores.py --batch_size 16 --n_samples 1563 > ./logs/nasbench201_1563.out

## 15625 default is cifar10
# CUDA_VISIBLE_DEVICES=0 python verify_scores.py --batch_size 16 > ./logs/nasbench201_15625_v2.out
CUDA_VISIBLE_DEVICES=7 python verify_scores.py --batch_size 16 --search_space NASBench201 --dataset cifar10 --nds_space '' > ./logs/nasbench201_15625_cifar10_v3.out

# python verify_scores.py --batch_size 16 > ./logs/nb2_cf10.out

# python verify_scores.py --batch_size 16 --dataset cifar100 > ./logs/nb2_cf100.out

# python verify_scores.py --batch_size 16 --dataset ImageNet16-120 > ./logs/nb2_in.out

# python verify_scores.py --batch_size 16 --nds_space nds_amoeba --search_space NDS > ./logs/amoeba.out

# python verify_scores.py --batch_size 16 --nds_space nds_darts --search_space NDS > ./logs/darts.out

# python verify_scores.py --batch_size 16 --nds_space nds_pnas --search_space NDS > ./logs/pnas.out

# python verify_scores.py --batch_size 16 --nds_space nds_nasnet --search_space NDS > ./logs/nasnet.out

# python verify_scores.py --batch_size 16 --nds_space nds_enas --search_space NDS > ./logs/enas.out

# python verify_scores.py --batch_size 64 --search_space NATSBench > ./logs/nats.out

