class Heekscad < Formula
  desc "HeeksCAD is an open source, CAD application based on OpenCASCADE"
  homepage "https://github.com/mtlott/heekscad"
  url "https://github.com/mtlott/heekscad.git"
  version "1.0.1"
  sha256 ""

  depends_on "cmake" => :build
  depends_on "brewsci/science/oce"
  depends_on "mtlott/multiverse/libarea"
  depends_on "wxmac"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "true"
  end
end
