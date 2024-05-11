exp_name='qylab'

voxel_size=0.001
update_init_factor=16
appearance_dim=0
ratio=1

ulimit -n 4096

./train.sh -d merged -l ${exp_name}  --gpu -1 --voxel_size ${voxel_size} --update_init_factor ${update_init_factor} --appearance_dim ${appearance_dim} --ratio ${ratio}