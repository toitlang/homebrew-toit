# Copyright (C) 2025 Toit contributors
# Use of this source code is governed by an MIT-style license that can be
# found in the LICENSE file.

class Jaguar < Formula
  desc "Live reloading for your ESP32"
  homepage "https://github.com/toitlang/jaguar"
  url "https://github.com/toitlang/jaguar/archive/refs/tags/v1.50.2.tar.gz"
  sha256 "a41109c49a2eeb0cbaffa752353968194867506aee9476a1e8b46184e1ad5fd4"
  license "MIT"
  head "https://github.com/toitlang/jaguar.git", branch: "main"
  disable! date: "2025-03-16", because: \
    "This formula has been migrated to Homebrew/core. Please run: brew install jaguar"

  def install
    odie "This formula has been migrated to Homebrew/core. Please run: brew install jaguar"
  end
end
