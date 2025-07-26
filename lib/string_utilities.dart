library string_utilities;

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

  /// Checks if the string is a valid email address.
  ///
  /// This method uses a regular expression to validate the format of the string as an email.
  /// It supports common email formats including subdomains and special characters.
  ///
  /// Example usage:
  /// ```dart
  /// bool valid = "john.doe@example.com".isEmail(); // true
  /// ```

  bool isEmail() {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(this);
  }

  /// Checks if the string is a valid international phone number.
  ///
  /// The phone number may optionally start with `+` and should contain 10 to 15 digits.
  ///
  /// Example usage:
  /// ```dart
  /// bool valid = "+919876543210".isPhoneNumber(); // true
  /// ```

  bool isPhoneNumber() {
    return RegExp(r'^\+?[0-9]{10,15}$').hasMatch(this);
  }

  /// Checks if the string is a valid URL (http, https, or ftp).
  ///
  /// This method uses a basic pattern to verify if the string resembles a typical URL.
  ///
  /// Example usage:
  /// ```dart
  /// bool valid = "https://flutter.dev".isUrl(); // true
  /// ```

  bool isUrl() {
    return RegExp(r'^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$').hasMatch(this);
  }

  /// Checks if the string represents a valid number (integer or decimal).
  ///
  /// Example usage:
  /// ```dart
  /// bool isNumber = "123.45".isNumeric(); // true
  /// bool isNotNumber = "abc".isNumeric(); // false
  /// ```

  bool isNumeric() {
    return RegExp(r'^-?[0-9]+(\.[0-9]+)?$').hasMatch(this);
  }

  /// Checks if the string contains only letters and numbers (no symbols or spaces).
  ///
  /// Example usage:
  /// ```dart
  /// bool isAlphaNum = "abc123".isAlphanumeric(); // true
  /// bool isNotAlphaNum = "abc123!".isAlphanumeric(); // false
  /// ```

  bool isAlphanumeric() {
    return RegExp(r'^[a-zA-Z0-9]+$').hasMatch(this);
  }

  /// Extracts only numeric characters from the string.
  ///
  /// Example usage:
  /// ```dart
  /// String digits = "(123) 456-7890".onlyNumbers(); // "1234567890"
  /// ```

  String onlyNumbers() {
    return replaceAll(RegExp(r'[^\d]'), '');
  }

  /// Extracts only alphabetic letters from the string (A–Z, a–z).
  ///
  /// Example usage:
  /// ```dart
  /// String letters = "abc123!".onlyLetters(); // "abc"
  /// ```

  String onlyLetters() {
    return replaceAll(RegExp(r'[^a-zA-Z]'), '');
  }

  /// Truncates the string to the specified [length] and appends [ellipsis] if needed.
  ///
  /// If the string is shorter than [length], it returns the original string.
  ///
  /// Example usage:
  /// ```dart
  /// String result = "Hello, world!".truncate(5); // "Hello..."
  /// ```

  String truncate(int length, {String ellipsis = "..."}) {
    if (this.length <= length) return this;
    return substring(0, length) + ellipsis;
  }

  /// Removes all whitespace characters from the string.
  ///
  /// This includes spaces, tabs, and newlines.
  ///
  /// Example usage:
  /// ```dart
  /// String cleaned = " Hello \n World ".removeAllWhitespace(); // "HelloWorld"
  /// ```

  String removeAllWhitespace() {
    return replaceAll(RegExp(r'\s+'), '');
  }

  /// Converts a camelCase or PascalCase string to snake_case.
  ///
  /// Example usage:
  /// ```dart
  /// String snake = "helloWorld".toSnakeCase(); // "hello_world"
  /// ```

  String toSnakeCase() {
    return replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      return '_${match.group(0)!.toLowerCase()}';
    });
  }

  /// Converts a snake_case or kebab-case string to camelCase.
  ///
  /// Example usage:
  /// ```dart
  /// String camel = "hello_world".toCamelCase(); // "helloWorld"
  /// ```

  String toCamelCase() {
    final words = split(RegExp(r'[_\-]'));
    return words.first + words.skip(1).map((w) => w.toCapitalize()).join();
  }

  /// Repeats the string [times] number of times and joins the results.
  ///
  /// Example usage:
  /// ```dart
  /// String repeated = "ha".repeat(3); // "hahaha"
  /// ```

  String repeat(int times) => List.filled(times, this).join();

  /// Masks a portion of the string with the given [maskChar].
  ///
  /// - [start]: The index to start masking (inclusive).
  /// - [end]: The index to stop masking (exclusive). If -1, masks to the end.
  /// - [maskChar]: The character to use for masking (default: '*').
  ///
  /// Example usage:
  /// ```dart
  /// String masked = "1234567890".mask(start: 2, end: 6); // "12****7890"
  /// ```

  String mask({int start = 0, int end = -1, String maskChar = "*"}) {
    final e = end == -1 ? length : end;
    if (start >= e || start >= length) return this;

    final masked = List.filled(e - start, maskChar).join();
    return substring(0, start) + masked + substring(e);
  }
}
