# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Coppeno < Formula
  desc "coppeno"
  homepage "https://github.com/webcyou-org/coppeno"
  version "0.5.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/webcyou-org/coppeno/releases/download/v0.5.6/coppeno_darwin_x86_64.tar.gz"
      sha256 "512acac2a0e0aaf82d82a97e1d08744de0f89aabc8170fcfc8be4c55107517c1"

      def install
        bin.install "coppeno"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/webcyou-org/coppeno/releases/download/v0.5.6/coppeno_darwin_arm64.tar.gz"
      sha256 "2707f291fad95d59af013134aa97cdd5e26fb821e057b281ccd1c8f808870308"

      def install
        bin.install "coppeno"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/webcyou-org/coppeno/releases/download/v0.5.6/coppeno_linux_arm64.tar.gz"
      sha256 "130e8a502ddfd128e5d971f6a53832056f8215de697380a124cea818d344bad2"

      def install
        bin.install "coppeno"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/webcyou-org/coppeno/releases/download/v0.5.6/coppeno_linux_x86_64.tar.gz"
      sha256 "f2dba5985b6d9b129cf11f0fdc518ade9c7e2f58977fe435086645551937dadf"

      def install
        bin.install "coppeno"
      end
    end
  end

  test do
    system "#{bin}/coppeno --version"
  end
end
