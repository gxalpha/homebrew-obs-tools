class GersemiSort < Formula
  include Language::Python::Virtualenv

  desc "Todo"
  homepage "https://github.com/obsproject/homebrew-tools"
  url "file://#{Dir.pwd}/gersemi_sort-v0.1.tar.gz"
  sha256 "723809783e8f5c72f8c3c49942b9158cb3c71a403f2383c669522113df16caf6"
  license "MPL-2.0"

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
