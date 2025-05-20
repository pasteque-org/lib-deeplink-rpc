import 'package:url_launcher/url_launcher.dart' as url_launcher;

/// A wrapper around the `url_launcher` plugin to facilitate launching URLs.
/// This class can be mocked for testing purposes.
class UrlLauncher {
  /// Creates an instance of [UrlLauncher].
  const UrlLauncher();

  /// Passes the given [url] to the underlying platform for handling.
  ///
  /// This typically opens the URL in an external application (e.g., a web browser).
  /// Returns `true` if the URL was launched successfully, `false` otherwise.
  Future<bool> launchUrl(final Uri url) => url_launcher.launchUrl(
    url,
    mode: url_launcher.LaunchMode.externalApplication,
  );

  /// Checks whether the specified [url] can be handled by an application installed on the device.
  ///
  /// Returns `true` if the URL can be launched, `false` otherwise.
  Future<bool> canLaunchUrl(final Uri url) => url_launcher.canLaunchUrl(url);
}
