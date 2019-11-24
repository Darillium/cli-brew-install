require "language/node"
class Kitlings < Formula
  desc "An open source CLI for darillium users, built with the OCLIF framework"
  homepage "https://github.com/Darillium/kitlings"
  url "https://registry.npmjs.org/kitlings/-/kitlings-0.11.1.tgz"
  version "0.11.1"
  sha256 "b341235b5bf73a3fe5cfce609cac8ced8dd3992e6aa74cc8aa8f0425a22735c7"
  depends_on "node"
  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  test do
    raise "Test not implemented."
  end
