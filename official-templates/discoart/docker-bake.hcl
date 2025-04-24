variable "RELEASE" {
    default = "0.0.0"
}

variable "IMAGE_NAME" {
    default = "runpod/discoart"
}

variable "GITHUB_WORKSPACE" {
    default = "../.."
}

target "default" {
    dockerfile = "Dockerfile"
    tags = ["${IMAGE_NAME}:${RELEASE}"]
    contexts = {
        scripts = "${GITHUB_WORKSPACE}/container-template"
        proxy = "${GITHUB_WORKSPACE}/container-template/proxy"
    }
}
