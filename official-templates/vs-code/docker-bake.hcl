variable "RELEASE" {
  default = "0.1.0"
}

variable "GITHUB_WORKSPACE" {
  default = "../.."
}

target "default" {
  dockerfile = "${GITHUB_WORKSPACE}/official-templates/vs-code/Dockerfile"
  tags       = ["runpod/coder:${RELEASE}"]
  contexts = {
    scripts = "${GITHUB_WORKSPACE}/container-template"
    proxy   = "${GITHUB_WORKSPACE}/container-template/proxy"
  }
}
