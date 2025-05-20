# 3.0.0
- Forked [archethic](https://github.com/archethic-foundation/libdart.git)
- **Flutter SDK migration**: Updated the Flutter version to `3.29.3` to ensure compatibility with the latest stable tooling and features.
- **Dartdoc documentation**: Added documentation comments throughout the codebase to improve API documentation via [`dartdoc`](https://dart.dev/tools/dartdoc).
- **Linter configuration**: Enabled and applied a comprehensive set of linter rules based on the official list ([dart.dev/tools/linter-rules/all](https://dart.dev/tools/linter-rules/all)), including adjustments to comply with newly introduced rules.
- **Code cleanup**: Removed the unused `errors` class to reduce code clutter and improve maintainability.
- **Dependency upgrades**: Updated package dependencies, including a major upgrade to [`freezed`](https://pub.dev/packages/freezed) version `3.0.0`, following the official [migration guide](https://github.com/rrousselGit/freezed/blob/master/packages/freezed/migration_guide.md), to take advantage of its latest improvements and compatibility fixes.

# 2.0.0-beta.2
- Update flutter version to 3.27.4
- Update dependencies

# 2.0.0-beta.1

- Add automated tests
- Data serialization uses `base64Url` instead of `base64`

## Breaking changes
- Renamed `DeeplinkRpcRequestReceiver` to `DeeplinkRpcServer`

# 1.1.0

- refactor: :recycle: Use Logging library

## Breaking changes
- feat: :sparkles: Request Timeout is optional. There is no default value anymore.


# 1.0.8
- Fix web deeplink RPC

# 1.0.7
- Migration to flutter 3.22

# 1.0.6
- Update dependencies and Dart version

# 1.0.5
- Encapsulate the example in a dedicated project (contribution @gdaguin)

# 1.0.4
- Downgrade archive lib version

# 1.0.3
- Fix compatibility with web platform

# 1.0.2
- Add compatibility with web platform

# 1.0.1
- Improve documentation

# 1.0.0
- Initial version (from @chralu)
