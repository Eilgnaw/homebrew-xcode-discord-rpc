class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyumidev/xcode-discord-rpc"
  url "https://github.com/izyumidev/xcode-discord-rpc/releases/download/v0.1.5/xcode-discord-rpc.tar.gz"
  sha256 "baa8f6367918f1a27e92391c995412f7bc5b1f0763a93e9e6d8fe1b73475e568"
  version "0.1.5"

  def install
    bin.install "xcode-discord-rpc"
  end

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
        <key>KeepAlive</key>
        <true/>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>#{bin}/xcode-discord-rpc</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>StandardOutPath</key>
        <string>/usr/local/var/log/hombebrew/xcode-discord-rpc/homebrew.mxcl.xcode-discord-rpc.log</string>
        <key>StandardErrorPath</key>
        <string>/usr/local/var/log/hombebrew/xcode-discord-rpc/homebrew.mxcl.xcode-discord-rpc.stderr.log</string>
      </dict>
      </plist>
    EOS
  end
end
