class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyumidev/xcode-discord-rpc"
  url "https://github.com/Eilgnaw/xcode-discord-rpc/releases/download/v0.2.2/xcode-discord-rpc.tar.gz"
  sha256 "3e46a9359558bbeea56f9511a7fe3c35cf7a7210bce1635ae517168fbea11b9b"
  version "0.2.2"

  def install
    bin.install "xcode-discord-rpc"
  end

  service do
    run opt_bin/"xcode-discord-rpc"
    keep_alive true
    working_dir var/"xcode-discord-rpc"
    error_log_path var/"xcode-discord-rpc/discord-rpc.log"
  end
end
