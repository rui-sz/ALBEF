#!/bin/bash

echo "Hello, I am going to train!"

RANDOM=9901
python3 -m torch.distributed.launch --nproc_per_node=4 --master_port=$RANDOM --use_env Retrieval.py \
--config ./configs/Retrieval_flickr.yaml \
--output_dir /mnt/bn/m2-live-rui/mlx/users/dingrui.james/playground/output/Retrieval_flickr \
--checkpoint /mnt/bn/m2-live-rui/mlx/users/dingrui.james/playground/VL/Example/ALBEF_4M.pth