# Copyright (C) 2021 Toitware ApS. All rights reserved.
# Use of this source code is governed by an MIT-style license that can be
# found in the LICENSE file.

class Jaguar < Formula
  desc "Live reloading for your ESP32"
  homepage "https://github.com/toitlang/jaguar"
  url "https://github.com/toitlang/jaguar/archive/refs/tags/v1.4.9.tar.gz"
  sha256 "7485c688c92e43c88f7a55d152c5ab7cc4be4a5bd449af10e33b9b342b11297f"
  license "MIT"
  head "https://github.com/toitlang/jaguar.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:[._]\d+)+)["' >]}i)
  end

  depends_on "go" => :build

  def install
    rm_rf ".brew_home"

    system "make", "JAG_BUILD_RELEASE=1", "jag"
    bin.install "build/jag"

    output = Utils.safe_popen_read(bin/"jag", "completion", "bash")
    (bash_completion/"jag").write output

    output = Utils.safe_popen_read(bin/"jag", "completion", "zsh")
    (zsh_completion/"_jag").write output

    output = Utils.safe_popen_read(bin/"jag", "completion", "fish")
    (fish_completion/"jag.fish").write output
  end

  test do
    version_output = shell_output(bin/"jag version 2>&1")
    assert_match "Build date:", version_output
    build.stable? && (assert_match "Version:\t v#{version}", version_output)
  end
end
