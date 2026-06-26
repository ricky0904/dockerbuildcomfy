#!/bin/bash
sudo docker run -it --network=host --device=/dev/kfd --device=/dev/dri --group-add=video --ipc=host --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --shm-size 8G -w /app/ComfyUI -v $HOME/Documents/ComfyUI/models:/app/ComfyUI/models -p 8188:8188 ricky0904/mycomfyui:latest
