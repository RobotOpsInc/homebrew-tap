class Rosql < Formula
  desc "The query language for ROS2 telemetry data"
  homepage "https://rosql.org"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RobotOpsInc/rosql/releases/download/v#{version}/rosql-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f500338d30f0d1c7bfa596fbffd80d0019d40d8c3b6529972513cd4318ed80e0"
    end
    on_intel do
      url "https://github.com/RobotOpsInc/rosql/releases/download/v#{version}/rosql-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "69403f847e20f20633af1e2852bbf7d48dce2ae5e66e5c12d2b884208c8e4fa8"
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
