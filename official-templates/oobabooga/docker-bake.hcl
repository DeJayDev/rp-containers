variable "RELEASE" {
    default = "1.2.1"
}

variable "GITHUB_WORKSPACE" {
    default = "../.."
}

target "default" {
    dockerfile = "${GITHUB_WORKSPACE}/offical-templates/oobabooga/Dockerfile"
    tags = ["runpod/oobabooga:${RELEASE}"]
    contexts = {
        scripts = "${GITHUB_WORKSPACE}/container-template"
        proxy = "${GITHUB_WORKSPACE}/container-template/proxy"
    }
}
