# Copyright (C) 2021 Toitware ApS. All rights reserved.
# Use of this source code is governed by an MIT-style license that can be
# found in the LICENSE file.

class Jaguar < Formula
  desc "Live reloading for your ESP32"
  homepage "https://github.com/toitlang/jaguar"
  url "https://github.com/toitlang/jaguar/archive/refs/tags/v1.6.4.tar.gz"
  sha256 "6d94c725f9bbd3cadbfc9b2716f972c721c06f76a100c6968c4387e7cdf566f5"
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

    generate_completions_from_executable(bin/"jag", "--no-analytics", "completion")
  end

  test do
    version_output = shell_output(bin/"jag --no-analytics version 2>&1")
    assert_match "Build date:", version_output
    build.stable? && (assert_match "Version:\t v#{version}", version_output)
  end
end
