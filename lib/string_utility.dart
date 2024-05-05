library string_utility;

/// Extension methods for `String` type.
extension StringExtensions on String {
  /// Returns the given default value if the string is empty; otherwise, returns the string itself.
  ///
  /// This method is useful for providing a default value when dealing with potentially empty strings.
  ///
  /// - [defaultValue]: The value to return if the string is empty.
  ///
  /// Example usage:
  /// ```dart
  /// String name = "".ifEmpty("Unknown");
  /// print(name); // Output: "Unknown"
  /// ```
  ///
  /// If the original string is non-empty, this method returns the original string.
  ///
  /// ```dart
  /// String name = "John Doe".ifEmpty("Unknown");
  /// print(name); // Output: "John"
  /// ```
  String ifEmpty(String defaultValue) {
    return isEmpty ? defaultValue : this;
  }

  /// Returns `true` if the string is blank (empty or contains only whitespace).
  ///
  /// This function trims the string and checks if it is empty, returning `true` if
  /// it is empty or contains only whitespace, and `false` otherwise.
  ///
  /// Example:
  /// ```dart
  /// bool isBlank = "   ".isBlank(); // true
  /// bool isNotBlank = "Text".isBlank(); // false
  /// ```
  bool isBlank() {
    return trim().isEmpty;
  }

  /// Capitalizes the first letter of the string.
  ///
  /// If the string is empty, it returns the original string.
  /// Otherwise, it converts the first character to uppercase and appends the rest
  /// of the string.
  ///
  /// Example:
  /// ```dart
  /// String capitalized = "hello".toCapitalize(); // "Hello"
  /// ```
  String toCapitalize() {
    return isNotEmpty ? "${this[0].toUpperCase()}${substring(1)}" : this;
  }

  /// Reverses the order of characters in the string.
  ///
  /// This function splits the string into individual characters, reverses the
  /// order, and joins them back into a single string.
  ///
  /// Example:
  /// ```dart
  /// String reversed = "Flutter".toReverse(); // "rettulF"
  /// ```
  String toReverse() {
    return split('').reversed.join();
  }

  /// Converts the entire string to lowercase.
  ///
  /// This function converts all characters in the string to lowercase.
  ///
  /// Example:
  /// ```dart
  /// String lowerCase = "HELLO WORLD".toLowerCase(); // "hello world"
  /// ```
  String toLowerCase() {
    return this.toLowerCase();
  }

  /// Capitalizes the first letter of each word in a multi-word string.
  ///
  /// This function splits the string by spaces and capitalizes the first letter
  /// of each word.
  ///
  /// Example:
  /// ```dart
  /// String capitalizedWords = "make each word capitalized".toCapitalizeEachWord(); // "Make Each Word Capitalized"
  /// ```
  String toCapitalizeEachWord() {
    return split(' ').map((word) => word.toCapitalize()).join(' ');
  }

  /// Removes the last word from a string.
  ///
  /// This function splits the string by whitespace, removes the last word,
  /// and then joins the remaining words into a new string.
  ///
  /// If the string has only one word or is empty, the result is an empty string.
  ///
  /// Example usage:
  /// ```dart
  /// String result = "This is a sentence.".removeLastWord();
  /// print(result); // Output: "This is a"
  /// ```
  String removeLastWord() {
    final words = trim().split(RegExp(r'\s+'));
    return words.length > 1 ? words.sublist(0, words.length - 1).join(" ") : "";
  }

  /// Gets the last word from a string.
  ///
  /// This function splits the string by whitespace and retrieves the last word.
  /// If the string is empty or has no words, it returns an empty string.
  ///
  /// Example usage:
  /// ```dart
  /// String lastWord = "This is a sentence.".getLastWord();
  /// print(lastWord); // Output: "sentence."
  /// ```
  String getLastWord() {
    final words = trim().split(RegExp(r'\s+'));
    return words.isNotEmpty ? words.last : "";
  }

  /// Checks if the current string is equal to another string with optional case-insensitive comparison and trimming.
  ///
  /// - [other]: The string to compare against.
  /// - [ignoreCase]: If `true`, the comparison ignores case. Default is `false`.
  /// - [trim]: If `true`, the comparison trims leading and trailing whitespace. Default is `false`.
  ///
  /// Returns `true` if the current string is equivalent to `other` based on the given flags.
  ///
  /// Example usage:
  ///  ```dart
  ///
  /// bool caseInsensitiveEqual = "hello".isEquals("HELLO", ignoreCase: true); // true
  /// // Trimmed comparison
  /// bool trimmedEqual = " hello ".isEquals("hello", trim: true); // true
  /// // Case-sensitive comparison
  /// bool caseSensitiveEqual = "hello".isEquals("HELLO"); // false
  /// // Case-insensitive and trimmed comparison
  /// bool bothEqual = " hello ".isEquals("HELLO", ignoreCase: true, trim: true); // true
  ///  ```
  bool isEquals(String other, {bool ignoreCase = false, bool trim = false}) {
    String a = this;
    String b = other;

    if (trim) {
      a = a.trim();
      b = b.trim();
    }

    if (ignoreCase) {
      a = a.toLowerCase();
      b = b.toLowerCase();
    }

    return a == b;
  }
}
