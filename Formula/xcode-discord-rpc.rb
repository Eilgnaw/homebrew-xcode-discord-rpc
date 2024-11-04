class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyumidev/xcode-discord-rpc"
  url "https://github.com/Eilgnaw/xcode-discord-rpc/releases/download/v0.2.3/xcode-discord-rpc.tar.gz"
  sha256 "579c89a4080295dce284a4fa44138935d75922672504741b8f4c757a7e6da01b"
  version "0.2.3"

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
