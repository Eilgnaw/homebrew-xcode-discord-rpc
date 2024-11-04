class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyumidev/xcode-discord-rpc"
  url "https://github.com/Eilgnaw/xcode-discord-rpc/releases/download/v0.2.5/xcode-discord-rpc.tar.gz"
  sha256 "af45697f3254e19bf3e3261ee4156fb1ded493407aad68cdd5d92542ea900d0f"
  version "0.2.5"

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
