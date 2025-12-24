class GersemiSort < Formula
  include Language::Python::Virtualenv

  desc "Todo"
  homepage "https://github.com/obsproject/homebrew-tools"
  url "file://#{Dir.pwd}/gersemi_sort-v0.1.tar.gz"
  sha256 "723809783e8f5c72f8c3c49942b9158cb3c71a403f2383c669522113df16caf6"
  license "MPL-2.0"

  bottle do
    root_url "https://github.com/gxalpha/homebrew-obs-tools/releases/download/gersemi_sort-0.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "73bc5eeb9cd191fb73c7bd84d4975254486548fc25bdf4d322584573d075ce86"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "67b1ffca6d44794a4543eead325aa98b30d2e7eb7e3ec64fe428803c26f11f2f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "20c4986cb59a038257d1f22897985de67c4abd0209cbd5ee9d398776cd599d87"
  end

  depends_on "python@3"

  def install
    venv = virtualenv_create(libexec, "python3")
    system "ls", buildpath.to_s
    venv.pip_install_and_link buildpath
  end

  # test do
  #   system "python3", "-c", "import gersemi_sort"
  # end
end
