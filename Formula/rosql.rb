class Rosql < Formula
  desc "The query language for ROS2 telemetry data"
  homepage "https://rosql.org"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RobotOpsInc/rosql/releases/download/v#{version}/rosql-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ee218c69dccefb313767fc79b0904a461b2061419279f9294f094c2183322741"
    end
    on_intel do
      url "https://github.com/RobotOpsInc/rosql/releases/download/v#{version}/rosql-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "75acb90d5cbdef9a73d5532849675966a183fffe62e2d93289c036d2d95c92ad"
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
