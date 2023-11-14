class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyumidev/xcode-discord-rpc"
  url "https://github.com/izyumidev/xcode-discord-rpc/releases/download/v0.1.7/xcode-discord-rpc.tar.gz"
  sha256 "adf1f95688eadc3ed6ab8667e329f425a7587750af1a2f6dac004a1f19755fad"
  version "0.1.7"

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
