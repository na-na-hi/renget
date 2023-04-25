#LoRa training log

below is compare between scheduler the lr = 1e-03 as you can see there's only slightly different between scheduler so it's probably doesn't matter which scheduler you use

![Image description](https://i.imgur.com/jl1rpTq.jpeg)

next is for network dimm and network alpha result is with high lr (1e-03 for unet) you should set ratio between network_alpha/network_dimm less than 0.25 (ie. network dimm 128,network alpha less than 32)
![Image description](https://i.imgur.com/FMwqoai.jpg)

next experiment is tried to see a limit of lr can go so I set all lr to the same value as you can see with network_dim = 128 ,lr can go high about 2e-03
![Image description](https://i.imgur.com/cj6NXr6.jpeg)


refer useful experiment  https://rentry.org/lora-training-science by hifumi anon