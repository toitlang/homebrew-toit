# Copyright (C) 2025 Toit contributors
# Use of this source code is governed by an MIT-style license that can be
# found in the LICENSE file.

class Jaguar < Formula
  desc "Live reloading for your ESP32"
  homepage "https://github.com/toitlang/jaguar"
  url "https://github.com/toitlang/jaguar/archive/refs/tags/v1.49.0.tar.gz"
  sha256 "2af8666ad6f46deac0b802e5f404a461aad056744ae083f239853028082d4d23"
  license "MIT"
  head "https://github.com/toitlang/jaguar.git", branch: "main"
  disable! date: "2025-03-16", because: \
    "This formula has been migrated to Homebrew/core. Please run: brew install jaguar"

  def install
    odie "This formula has been migrated to Homebrew/core. Please run: brew install jaguar"
  end
end
