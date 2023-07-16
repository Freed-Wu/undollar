# undollar

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/Freed-Wu/undollar/main.svg)](https://results.pre-commit.ci/latest/github/Freed-Wu/undollar/main)
[![github/workflow](https://github.com/Freed-Wu/undollar/actions/workflows/main.yml/badge.svg)](https://github.com/Freed-Wu/undollar/actions)
[![github/workflow](https://github.com/Freed-Wu/undollar/actions/workflows/nix.yml/badge.svg)](https://github.com/Freed-Wu/undollar/actions)
[![codecov](https://codecov.io/gh/Freed-Wu/undollar/branch/main/graph/badge.svg)](https://codecov.io/gh/Freed-Wu/undollar)

[![github/downloads](https://shields.io/github/downloads/Freed-Wu/undollar/total)](https://github.com/Freed-Wu/undollar/releases)
[![github/downloads/latest](https://shields.io/github/downloads/Freed-Wu/undollar/latest/total)](https://github.com/Freed-Wu/undollar/releases/latest)
[![github/issues](https://shields.io/github/issues/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/issues)
[![github/issues-closed](https://shields.io/github/issues-closed/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/issues?q=is%3Aissue+is%3Aclosed)
[![github/issues-pr](https://shields.io/github/issues-pr/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/pulls)
[![github/issues-pr-closed](https://shields.io/github/issues-pr-closed/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/pulls?q=is%3Apr+is%3Aclosed)
[![github/discussions](https://shields.io/github/discussions/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/discussions)
[![github/milestones](https://shields.io/github/milestones/all/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/milestones)
[![github/forks](https://shields.io/github/forks/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/network/members)
[![github/stars](https://shields.io/github/stars/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/stargazers)
[![github/watchers](https://shields.io/github/watchers/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/watchers)
[![github/contributors](https://shields.io/github/contributors/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/graphs/contributors)
[![github/commit-activity](https://shields.io/github/commit-activity/w/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/graphs/commit-activity)
[![github/last-commit](https://shields.io/github/last-commit/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/commits)
[![github/release-date](https://shields.io/github/release-date/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/releases/latest)

[![github/license](https://shields.io/github/license/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar/blob/main/LICENSE)
[![github/languages](https://shields.io/github/languages/count/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar)
[![github/languages/top](https://shields.io/github/languages/top/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar)
[![github/directory-file-count](https://shields.io/github/directory-file-count/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar)
[![github/code-size](https://shields.io/github/languages/code-size/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar)
[![github/repo-size](https://shields.io/github/repo-size/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar)
[![github/v](https://shields.io/github/v/release/Freed-Wu/undollar)](https://github.com/Freed-Wu/undollar)

Strip the dollar sign from the beginning of the terminal command.
For example, stackoverflow said:

````markdown
The command to init a git repository is:

```shell
$ git init
Initialized empty Git repository in /dev/shm/.git/
```
````

If you copy the line to your console directly:

```shell
$ $ git init
$: command not found
```

Now undollar makes it work:

```shell
$ $ git init
Initialized empty Git repository in /dev/shm/.git/
```

## Similar Projects

- <https://github.com/xtyrrell/undollar>: First undollar written in
  javascript. I think undollar had better be independent from any programs
  except shell only because the dollar problem only happens in console.
- <https://github.com/zpm-zsh/undollar>: zsh plugin of undollar, only works for zsh.
  just an alias: `alias $=''`
- <https://github.com/happyRip/undollar>: an undollar written in bash. Packaged
  for homebrew.
- This project:
  - Provide shell completions for bash/zsh
  - Only depends on sh
  - Unit test
  - Packaged for many distributions

## Install

### deb

Download [`*.deb`](https://github.com/Freed-Wu/undollar/releases) firstly.

```sh
deb -i *.deb
```

### rpm

Download [`*.rpm`](https://github.com/Freed-Wu/undollar/releases) firstly.

```sh
rpm -i *.rpm
```

### [AUR](https://aur.archlinux.org/packages/sh-undollar)

```sh
yay -S sh-undollar
```

### [NUR](https://nur.nix-community.org/repos/freed-wu)

```sh
nix-env -iA nur.repos.Freed-Wu.undollar
```

### homebrew

```sh
brew tap Freed-Wu/undollar https://github.com/Freed-Wu/undollar
brew install undollar
```
