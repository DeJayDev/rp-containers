variable "VERSION" {
    default = "5.3.3"
}

variable "GITHUB_WORKSPACE" {
    default = "../.."
}

target "default" {
    dockerfile = "${GITHUB_WORKSPACE}/official-templates/bittensor/Dockerfile"
    tags = ["runpod/bittensor:${VERSION}"]
    contexts = {
        scripts = "${GITHUB_WORKSPACE}/container-template"
        proxy = "${GITHUB_WORKSPACE}/container-template/proxy"
    }
    args = {
        VERSION = "${VERSION}"
    }
}
