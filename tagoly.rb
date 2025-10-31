class Tagoly < Formula
  desc "Smart CLI tool to assist with Git commits"
  homepage "https://github.com/meso1007/tagoly"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/meso1007/tagoly/releases/download/v1.0.0/tagoly-darwin-amd64"
      sha256 "f17c439f521bafb205b0b84dc7519f384f9b55a2ae305f783ff01d40a64c4f50"
      def install
        bin.install "tagoly-darwin-amd64" => "tagoly"
      end
    else
      url "https://github.com/meso1007/tagoly/releases/download/v1.0.0/tagoly-darwin-arm64"
      sha256 "f17c439f521bafb205b0b84dc7519f384f9b55a2ae305f783ff01d40a64c4f50"
      def install
        bin.install "tagoly-darwin-arm64" => "tagoly"
      end
    end
  elsif OS.linux?
    url "https://github.com/meso1007/tagoly/releases/download/v1.0.0/tagoly-linux-amd64"
    sha256 "f17c439f521bafb205b0b84dc7519f384f9b55a2ae305f783ff01d40a64c4f50"
    def install
      bin.install "tagoly-linux-amd64" => "tagoly"
    end
  end

  test do
    system "#{bin}/tagoly", "--version"
  end
end
