class Rosql < Formula
  desc "The query language for ROS2 telemetry data"
  homepage "https://rosql.org"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RobotOpsInc/rosql/releases/download/v#{version}/rosql-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "80ec556844db239a9f00b0c5aa558c7f5c52c4e5b0a6564a58d4f83952c4f6e5"
    end
    on_intel do
      url "https://github.com/RobotOpsInc/rosql/releases/download/v#{version}/rosql-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e18a0643f940853c830c1082ee6b51f3dd63f091d03b9e35cff6b075910b10d2"
    end
  end

  def install
    bin.install "rosql"
  end

  test do
    system "#{bin}/rosql", "--version"
    system "#{bin}/rosql", "validate", "FROM traces SINCE 1 hour ago"
  end
end
