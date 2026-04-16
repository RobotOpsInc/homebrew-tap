class Rosql < Formula
  desc "The query language for ROS2 telemetry data"
  homepage "https://rosql.org"
  version "0.4.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RobotOpsInc/rosql/releases/download/v#{version}/rosql-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "90269494c14ea2ddc9b3e4f2079ee6956c3ad1f0ede24a8742ce40d6041ffb38"
    end
    on_intel do
      url "https://github.com/RobotOpsInc/rosql/releases/download/v#{version}/rosql-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ab6944171b6972edfef335f790f5d8bfb325f439b0908d694b2ce6d99386cdd2"
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
