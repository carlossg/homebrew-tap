# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT19 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.9.1"

    if OS.mac? && Hardware::CPU.arm?
      kernel = "darwin"
      arch = "arm64"
      sha256 "e2ada94223e4cfffd8fbc14724e230b072becd007a7fde6f3296a95bcf56596e"
    elsif OS.mac? && Hardware::CPU.intel?
      kernel = "darwin"
      arch = "amd64"
      sha256 "1212551121b2d41ea61ea1f11703e486c34915145d3894c718e613d31e472305"
    elsif OS.linux? && Hardware::CPU.arm?
      kernel = "linux"
      arch = "arm64"
      sha256 "44f4f5dc0668430cadc5f4cc52e4ae1bf0a3f2f60320af6b3b2edd3c826402b5"
    elsif OS.linux? && Hardware::CPU.intel?
      kernel = "linux"
      arch = "amd64"
      sha256 "466d93ccf767e975691359c6c9bb6750696e54c336d28ccd4d39e0f0519e8bf6"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-" + arch
    url baseurl + "/v1.9.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
