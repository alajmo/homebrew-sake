# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sake < Formula
  desc "sake is a CLI tool that enables you to run commands on servers via ssh"
  homepage "https://sakecli.com"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alajmo/sake/releases/download/v0.12.0/sake_0.12.0_darwin_arm64.tar.gz"
      sha256 "bd535ddc6638cd66020134d1fd7b5e2195a4fc5f60966ef4628e54f66d5a8f78"

      def install
        bin.install "sake"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/alajmo/sake/releases/download/v0.12.0/sake_0.12.0_darwin_amd64.tar.gz"
      sha256 "8c300afcdb88d4c5df57f0f00920af45a5ea47defc3200d35653615e73d0799a"

      def install
        bin.install "sake"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alajmo/sake/releases/download/v0.12.0/sake_0.12.0_linux_amd64.tar.gz"
      sha256 "a698f2961830a47341ff9580213b50cb207bd4f093c6a8aecffe700e15bc508b"

      def install
        bin.install "sake"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/alajmo/sake/releases/download/v0.12.0/sake_0.12.0_linux_arm64.tar.gz"
      sha256 "7db6ba0084772cb01eca2ccd3186bdd01829bd45222df551dc48c99641296189"

      def install
        bin.install "sake"
      end
    end
  end
end
