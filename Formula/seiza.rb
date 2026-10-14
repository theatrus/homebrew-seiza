class Seiza < Formula
  desc "Astronomical plate solver, star detection, and catalog tools"
  homepage "https://github.com/theatrus/seiza"
  url "https://github.com/theatrus/seiza/archive/refs/tags/v0.31.0.tar.gz"
  sha256 "18ccfa1b1d2deecb0cfd9b3c30d0113ccebe54a7ea584f8c552b71210df71a78"
  license "Apache-2.0"
  head "https://github.com/theatrus/seiza.git", branch: "main"

  # Match only v-prefixed release tags; the repository also pushes py-v* tags
  # for Python wheel releases.
  livecheck do
    url :stable
    regex(/^v(\d+(?:\.\d+)+)$/i)
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "seiza-cli")
  end

  def caveats
    <<~EOS
      Plate solving needs star catalogs. Download them with:
        seiza setup
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/seiza --version")
  end
end
