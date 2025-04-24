variable "RELEASE" {
  default = "0.1.2"
}

variable "GITHUB_WORKSPACE" {
  default = "../.."
}

target "default" {
  dockerfile = "${GITHUB_WORKSPACE}/official-templates/vscode-server/Dockerfile"
  tags       = ["runpod/vscode-server:${RELEASE}"]
  contexts = {
    scripts = "${GITHUB_WORKSPACE}/container-template"
    proxy   = "${GITHUB_WORKSPACE}/container-template/proxy"
  }
}
