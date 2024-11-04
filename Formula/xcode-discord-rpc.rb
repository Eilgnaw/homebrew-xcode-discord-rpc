class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyumidev/xcode-discord-rpc"
  url "https://github.com/Eilgnaw/xcode-discord-rpc/releases/download/v0.2.4/xcode-discord-rpc.tar.gz"
  sha256 "22275f8a8d7d08ff993b3458d3755fc8a25f969c5d9aa7229e43c25ce5df63a7"
  version "0.2.4"

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
