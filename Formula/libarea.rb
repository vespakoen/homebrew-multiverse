class Libarea < Formula
  desc "Area is a CAM-related library and python module for pocketing and profiling operations"
  homepage "https://github.com/mtlott/libarea"
  url "https://github.com/mtlott/libarea.git"
  version "1.0"
  sha256 "e3b1304e6afb8dd8181ebcd95b171a70bd808ac7"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "boost-python"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    system "true"
  end
end
