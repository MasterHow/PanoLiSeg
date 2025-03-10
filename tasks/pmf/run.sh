## semantic kitti
# python -m torch.distributed.launch --nproc_per_node=4 --master_port=63445 --use_env main.py config_server_kitti.yaml
## nuscenes
python -m torch.distributed.launch --nproc_per_node=8 --master_port=63455 --use_env main.py config_server_nus.yaml

## my reproduce
# 多卡
python -m torch.distributed.launch --nproc_per_node=1 --master_port=63445 --use_env main.py --config_path reproduce_kitti_0.yaml
# 单卡
python main.py --config_path reproduce_kitti_0.yaml
