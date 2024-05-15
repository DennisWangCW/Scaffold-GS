exp_name='5clab'

voxel_size=0.001
update_init_factor=16
appearance_dim=0
ratio=1
ulimit -n 4096

iterations=50000
type=original_400

# example:

if [[ "$type" == *"merged"* ]]; then
    ./train.sh -d ${exp_name}/${type}/merged -l ${exp_name}  --gpu -1 --voxel_size ${voxel_size} --update_init_factor ${update_init_factor} --appearance_dim ${appearance_dim} --ratio ${ratio} --iterations ${iterations}
else
    ./train.sh -d ${exp_name}/${type} -l ${exp_name}  --gpu -1 --voxel_size ${voxel_size} --update_init_factor ${update_init_factor} --appearance_dim ${appearance_dim} --ratio ${ratio} --iterations ${iterations}
fi