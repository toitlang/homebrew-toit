# Copyright (C) 2025 Toit contributors
# Use of this source code is governed by an MIT-style license that can be
# found in the LICENSE file.

class Jaguar < Formula
  desc "Live reloading for your ESP32"
  homepage "https://github.com/toitlang/jaguar"
  url "https://github.com/toitlang/jaguar/archive/refs/tags/v1.50.1.tar.gz"
  sha256 "d62f267092fdcfaa46df28409514db396e63ff5d83eb3c18b6fcbd6ab8813438"
  license "MIT"
  head "https://github.com/toitlang/jaguar.git", branch: "main"
  disable! date: "2025-03-16", because: \
    "This formula has been migrated to Homebrew/core. Please run: brew install jaguar"

  def install
    odie "This formula has been migrated to Homebrew/core. Please run: brew install jaguar"
  end
end
