variable "RELEASE" {
    default = "1.0.3"
}

variable "GITHUB_WORKSPACE" {
    default = "../.."
}

target "default" {
  dockerfile = "${GITHUB_WORKSPACE}/official-templates/tensorflow/Dockerfile"
  tags = ["runpod/tensorflow:${RELEASE}"]
  contexts = {
    scripts = "${GITHUB_WORKSPACE}/container-template"
    proxy = "${GITHUB_WORKSPACE}/container-template/proxy"
  }
}
