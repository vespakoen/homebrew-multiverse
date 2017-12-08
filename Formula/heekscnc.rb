# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Heekscnc < Formula
  desc "HeeksCNC is an CAM add-on for HeeksCAD"
  homepage "https://github.com/mtlott/heekscnc"
  url "https://github.com/mtlott/heekscnc.git"
  version "1.0.1"
  sha256 ""

  depends_on "cmake" => :build
  depends_on "mtlott/multiverse/heekscad"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "true"
  end
end
