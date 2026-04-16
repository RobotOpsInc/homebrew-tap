class Rosql < Formula
  desc "The query language for ROS2 telemetry data"
  homepage "https://rosql.org"
  version "0.4.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RobotOpsInc/rosql/releases/download/v#{version}/rosql-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a97edbc1e48d79a9557ffdede08581342571082e58f871280e61be1dce73cccd"
    end
    on_intel do
      url "https://github.com/RobotOpsInc/rosql/releases/download/v#{version}/rosql-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "dc385c0ee4efcefc31e20ede7367ee3548c14f218d457d4269d2b0f0dbd12e0d"
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
