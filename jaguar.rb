class Jaguar < Formula
  desc "Live reloading for your ESP32"
  homepage "https://github.com/toitlang/jaguar"
  url "https://github.com/toitlang/jaguar.git", tag: "v0.3.2", revision: "f925bae2197a20ba92a54e4631bf3bb64ddc2417"
  license "MIT"
  head "https://github.com/toitlang/jaguar.git", branch: "main"

  depends_on "go" => :build

  def install
    rm_rf ".brew_home"

    system "make", "jag"
    bin.install "build/jag"

    output = Utils.safe_popen_read(bin/"helm", "completion", "bash")
    (bash_completion/"helm").write output

    output = Utils.safe_popen_read(bin/"helm", "completion", "zsh")
    (zsh_completion/"_helm").write output

    output = Utils.safe_popen_read(bin/"helm", "completion", "fish")
    (fish_completion/"helm.fish").write output
  end

  test do
    version_output = shell_output(bin/"jag version 2>&1")
    assert_match "Build date:", version_output
    uild.stable? && (assert_match "Version:\t v#{version}", version_output)
  end
end
