class Tagoly < Formula
  desc "Smart CLI tool to assist with Git commits"
  homepage "https://github.com/meso1007/Tagoly"
  version "1.2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/meso1007/Tagoly/releases/download/v1.2.0/Tagoly_Darwin_x86_64.tar.gz"
      sha256 "bea9941706814f360dfb0aa7b79b42eaf5fadd04d83b0f018a2db12259fe628f"
    else
      url "https://github.com/meso1007/Tagoly/releases/download/v1.2.0/Tagoly_Darwin_arm64.tar.gz"
      sha256 "7b61efa8fc2130803aa74691d2f8a1a38f6df3ceeec7ef47d9c742f733c28198"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/meso1007/Tagoly/releases/download/v1.2.0/Tagoly_Linux_arm64.tar.gz"
      sha256 "10b173438469c5f36e30b645f71a6e58a9239d1c0c53a967a3f6cfe48ab50ed2"
    else
      url "https://github.com/meso1007/Tagoly/releases/download/v1.2.0/Tagoly_Linux_x86_64.tar.gz"
      sha256 "53673caeaf6da2ca8262909a3bfd76bc316c5af0cb7d0f03f25c869b3fc60b8e"
    end
  end

  def install
    bin.install "tagoly"
  end

  test do
    system "#{bin}/tagoly", "--version"
  end
end
