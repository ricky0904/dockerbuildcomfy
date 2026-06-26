FROM rocm/pytorch:latest
RUN apt update
RUN apt install tmux -y
RUN apt install vim -y 
RUN pip install --upgrade pip
RUN git clone --single-branch --branch master --depth 1 https://github.com/Comfy-Org/ComfyUI.git /app/ComfyUI
WORKDIR /app/ComfyUI

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir -r manager_requirements.txt
