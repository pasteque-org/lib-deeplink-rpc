/// Provides utility extension methods for [String].
extension PowerString on String {
  /// Removes leading and trailing characters specified in [whatToStrip] from this string.
  ///
  /// Example:
  /// ```dart
  /// 'xxHello Worldxx'.strip('x'); // Output: 'Hello World'
  /// '..##TestData##..'.strip('.#'); // Output: 'TestData'
  /// ```
  String strip(final String whatToStrip) {
    var startIndex = 0;
    var endIndex = length - 1;

    for (var i = 0; i <= length; i++) {
      if (i == length) {
        return '';
      }
      if (!whatToStrip.contains(this[i])) {
        startIndex = i;
        break;
      }
    }

    for (var i = length - 1; i >= 0; i--) {
      if (!whatToStrip.contains(this[i])) {
        endIndex = i;
        break;
      }
    }

    return substring(startIndex, endIndex + 1);
  }
}
