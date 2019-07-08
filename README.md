[![Build Status](https://travis-ci.org/toshimaru/serverkit-vscode.svg?branch=master)](https://travis-ci.org/toshimaru/serverkit-vscode)

# serverkit-vscode

[Serverkit](https://github.com/serverkit/serverkit) plug-in for [VSCode](https://code.visualstudio.com/).

## Install

```rb
# Gemfile
gem "serverkit-vscode"
```
## Resource

### vscode_package

Install specified VSCode package.

#### Attributes

- `name` - package name (required)
- `version` - package version (optional)

#### Example

```yaml
resources:
  - type: vscode_package
    name: GitHub.vscode-pull-request-github
  - type: vscode_package
    name: ms-vscode.Go
    version: 0.11.0
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Serverkit::Vscode project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/toshimaru/serverkit-vscode/blob/master/CODE_OF_CONDUCT.md).
