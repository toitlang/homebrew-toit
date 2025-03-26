# Copyright (C) 2025 Toit contributors
# Use of this source code is governed by an MIT-style license that can be
# found in the LICENSE file.

class Jaguar < Formula
  desc "Live reloading for your ESP32"
  homepage "https://github.com/toitlang/jaguar"
  url "https://github.com/toitlang/jaguar/archive/refs/tags/v1.50.0.tar.gz"
  sha256 "6eab1e5ac660c12f12772e6444166bd1c48e58b7d2f38747a104c872356efc2f"
  license "MIT"
  head "https://github.com/toitlang/jaguar.git", branch: "main"
  disable! date: "2025-03-16", because: \
    "This formula has been migrated to Homebrew/core. Please run: brew install jaguar"

  def install
    odie "This formula has been migrated to Homebrew/core. Please run: brew install jaguar"
  end
end
