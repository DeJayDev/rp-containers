#!/bin/sh
export GITHUB_WORKSPACE=$(pwd) 
export RELEASE=local 

docker buildx bake -f official-templates/base/docker-bake.hcl
docker buildx bake -f official-templates/bittensor/docker-bake.hcl
docker buildx bake -f official-templates/discoart/docker-bake.hcl
docker buildx bake -f official-templates/fast-stable-diffusion/docker-bake.hcl
docker buildx bake -f official-templates/invokeai/docker-bake.hcl
docker buildx bake -f official-templates/oobabooga/docker-bake.hcl
docker buildx bake -f official-templates/pytorch/docker-bake.hcl
docker buildx bake -f official-templates/stable-diffusion-comfyui/docker-bake.hcl
docker buildx bake -f official-templates/stable-diffusion-webui/docker-bake.hcl
docker buildx bake -f official-templates/tensorflow/docker-bake.hcl
docker buildx bake -f official-templates/vs-code/docker-bake.hcl
docker buildx bake -f official-templates/vscode-server/docker-bake.hcl
