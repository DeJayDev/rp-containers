variable "RELEASE" {
    default = "3.3.0"
}

variable "GITHUB_WORKSPACE" {
    default = "../.."
}

target "default" {
    dockerfile = "${GITHUB_WORKSPACE}/offical-templates/invokeai/Dockerfile"
    tags = ["runpod/stable-diffusion:invoke-${RELEASE}"]
    contexts = {
        scripts = "${GITHUB_WORKSPACE}/container-template"
        proxy = "${GITHUB_WORKSPACE}/container-template/proxy"
    }
}
