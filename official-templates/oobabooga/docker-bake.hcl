variable "RELEASE" {
  default = "1.2.1"
}

variable "GITHUB_WORKSPACE" {
  default = "."
}

target "default" {
  context = "${GITHUB_WORKSPACE}/official-templates/oobabooga"
  dockerfile = "Dockerfile"
  tags = ["runpod/oobabooga:${RELEASE}"]
  contexts = {
    scripts = "${GITHUB_WORKSPACE}/container-template"
    proxy = "${GITHUB_WORKSPACE}/container-template/proxy"
  }
}
