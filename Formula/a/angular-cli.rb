class AngularCli < Formula
  desc "CLI tool for Angular"
  homepage "https://angular.dev/cli"
  url "https://registry.npmjs.org/@angular/cli/-/cli-18.2.4.tgz"
  sha256 "a5c3a2e55942d2e63e8000a031c39d917b1f46758096a35b2d52a196f05804d6"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "b4d5b67944e1bdee0b3065d725f4b5ce9386d2327a98b20d390e1dae9b0a759e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "acf1d459c8dec8f0f37aa1cb5aa1923a6927b3bb3ec369b897ac49ee34751af9"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "acf1d459c8dec8f0f37aa1cb5aa1923a6927b3bb3ec369b897ac49ee34751af9"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "acf1d459c8dec8f0f37aa1cb5aa1923a6927b3bb3ec369b897ac49ee34751af9"
    sha256 cellar: :any_skip_relocation, sonoma:         "f12bccd278a93d4ca01033056e12df43e01c4b745b28a9d1c7e83a3cb1b9a9a9"
    sha256 cellar: :any_skip_relocation, ventura:        "f12bccd278a93d4ca01033056e12df43e01c4b745b28a9d1c7e83a3cb1b9a9a9"
    sha256 cellar: :any_skip_relocation, monterey:       "437490e56f386be13f992089ac4969f8f98e59dd312f08cd68085904c7b9779a"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "acf1d459c8dec8f0f37aa1cb5aa1923a6927b3bb3ec369b897ac49ee34751af9"
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"ng", "new", "angular-homebrew-test", "--skip-install"
    assert_predicate testpath/"angular-homebrew-test/package.json", :exist?, "Project was not created"
  end
end
