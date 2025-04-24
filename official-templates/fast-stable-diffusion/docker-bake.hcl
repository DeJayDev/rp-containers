variable "RELEASE" {
    default = "2.4.0"
}

variable "GITHUB_WORKSPACE" {
    default = "../.."
}

target "default" {
    dockerfile = "${GITHUB_WORKSPACE}/offical-templates/fast-stable-diffusion/Dockerfile"
    tags = ["runpod/stable-diffusion:fast-stable-diffusion-${RELEASE}"]
    contexts = {
        scripts = "${GITHUB_WORKSPACE}/container-template"
        proxy = "${GITHUB_WORKSPACE}/container-template/proxy"
    }
}
