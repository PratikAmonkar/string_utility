# String Utilities

[![pub package](https://img.shields.io/pub/v/string_utilities.svg)](https://pub.dev/packages/string_utilities)
[![likes](https://img.shields.io/pub/likes/string_utilities.svg)](https://pub.dev/packages/string_utilities/score)
[![popularity](https://img.shields.io/pub/popularity/string_utilities.svg)](https://pub.dev/packages/string_utilities/score)
[![pub points](https://img.shields.io/pub/points/string_utilities.svg)](https://pub.dev/packages/string_utilities/score)
[![Dart CI](https://github.com/PratikAmonkar/string_utility/actions/workflows/test.yml/badge.svg)](https://github.com/PratikAmonkar/string_utility/actions/workflows/test.yml)


**String Utilities** is a Dart package that provides a collection of useful extension methods for
working with strings in Dart and Flutter. The package includes functions for trimming, capitalizing,
reversing, retrieving words, and many more.

> ⭐️ If you find this package useful, please consider giving it a **star** on [GitHub](https://github.com/PratikAmonkar/string_utility) – it helps others to discover it!


## Features

- `ifEmpty`: Returns a default value if a string is empty.
- `isBlank`: Checks if a string is blank (empty or contains only whitespace).
- `toCapitalize`: Capitalizes the first letter of a string.
- `toReverse`: Reverses the characters in a string.
- `toLowerCase`: Converts a string to lowercase.
- `toCapitalizeEachWord`: Capitalizes the first letter of each word in a string.
- `removeLastWord`: Removes the last word from a string.
- `getLastWord`: Retrieves the last word from a string.
- `isEquals`: Compares two strings with optional case-insensitive comparison and trimming.
- `isPhoneNumber`: Validates if the string is a valid phone number format.
- `isUrl`: Checks if a string is a valid URL.
- `isNumeric`: Checks if a string contains only numbers (integer or decimal).
- `isAlphanumeric`: Checks if a string contains only letters and numbers.
- `onlyNumbers`: Extracts only the digit characters from a string.
- `onlyLetters`: Extracts only alphabetic characters from a string.
- `truncate`: Truncates a string to a maximum length and adds ellipsis.
- `removeAllWhitespace`: Removes all whitespace characters from a string.
- `toSnakeCase`: Converts a string to snake_case format.
- `toCamelCase`: Converts a string to camelCase format.
- `repeat`: Repeats the string a specified number of times.
- `mask`: Replaces part of the string with a masking character.
- `isPalindrome`: Checks if the string is a palindrome, ignoring case and non-alphanumeric characters.
- `safeReverse`: Reverses a string safely (grapheme/emoji aware).
- `chunked`: Splits a string into chunks of a given size.
- `take`: Returns the first n characters of a string.
- `drop`: Removes the first n characters from a string.
- `padStartCustom`: Pads the start of the string with a custom pattern until a given width.
- `padEndCustom`: Pads the end of the string with a custom pattern until a given width.
- `splitByLength`: Splits a string into fixed-length segments (alias of chunked).
- `toSentenceCase`: Converts the string to sentence case (first letter uppercase).
- `containsOnly`: Checks if the string contains only allowed characters.
- `removeSpecialCharacters`: Removes all non-alphanumeric characters (except space).
- `toBase64`: Encodes the string to Base64.
- `fromBase64`: Decodes a Base64 string back to a normal string

## Getting Started

To use this package in your Flutter or Dart project, add the following dependency to
your `pubspec.yaml` file:

```yaml
dependencies:
  string_utility: ^1.2.0
```

## ✅ Tests

All unit tests are written using the `test` package.

✔️ All tests are passing


## Usage

## ifEmpty Example

The `ifEmpty` method returns a default value if the string is empty; otherwise, it returns the
original string.

```dart
String name = "John Doe".ifEmpty("Unknown");

print(name); // Output: "John"
```

## isBlank Example

The `isBlank` method returning `true` if it is empty or contains only whitespace, and `false`
otherwise.

```dart
bool isBlank = "   ".isBlank(); // true
bool isNotBlank = "Text".isBlank(); // false
```

## toCapitalize Example

The `toCapitalize` method check if the string is empty, it returns the original string.Otherwise, it
converts the first character to uppercase and appends the rest of the string.

```dart
String capitalized = "hello".toCapitalize(); // "Hello"
```

## toReverse Example

The `toReverse` method splits the string into individual characters, reverses the order, and joins
them back into a single string.

```dart
String reversed = "Flutter".toReverse(); // "rettulF"
```

## toLowerCase Example

The `toLowerCase` method return all converted characters in the string to lowercase.

```dart
String lowerCase = "HELLO WORLD".toLowerCase(); // "hello world"
```

## toCapitalizeEachWord Example

The `toCapitalizeEachWord` method splits the string by spaces and capitalizes the first letter of
each word.

```dart
String capitalizedWords = "make each word capitalized"
    .toCapitalizeEachWord(); // "Make Each Word Capitalized"
```

## removeLastWord Example

The `removeLastWord` method splits the string by whitespace, removes the last word, and then joins
the remaining words into a new string.If the string has only one word or is empty, then result is an
empty string.

```dart
String result = "This is a sentence.".removeLastWord();

print(result); // Output: "This is a"
```

## getLastWord Example

The `getLastWord` method splits the string by whitespace and retrieves the last word.If the string
is empty or has no words, it returns an empty string.

```dart
String lastWord = "This is a sentence.".getLastWord();

print(lastWord); // Output: "sentence."
```

## isEquals Example

The `isEquals` method returns `true` if the current string is equivalent to `other` based on the
given flags.

```dart
bool caseInsensitiveEqual = "hello".isEquals("HELLO", ignoreCase: true); // true
bool trimmedEqual = " hello ".isEquals("hello", trim: true); // true
bool caseSensitiveEqual = "hello".isEquals("HELLO"); // false
bool bothEqual = " hello ".isEquals("HELLO", ignoreCase: true, trim: true); // true
```

## isEmail Example

The `isEmail` method checks if the string is in a valid email format using a regular expression.

```dart
"user@example.com".isEmail(); // true
"invalid@com".isEmail(); // false
```

## isPhoneNumber Example

The `isPhoneNumber` method checks if the string is a valid international phone number, with optional + prefix and 10–15 digits.

```dart
"+919876543210".isPhoneNumber(); // true
"12345".isPhoneNumber(); // false
```

## isUrl Example

The `isUrl` method verifies whether the string is a valid URL with `http`, `https`, or `ftp` schemes.

```dart
"https://flutter.dev".isUrl(); // true
"not_url".isUrl(); // false
```

## isNumeric Example

The `isNumeric` method checks if the string represents a valid number (integer or decimal).

```dart
"123".isNumeric(); // true
"123.45".isNumeric(); // true
"abc".isNumeric(); // false
```

## isAlphanumeric Example

The `isAlphanumeric` method checks if the string contains only letters and numbers.

```dart
"abc123".isAlphanumeric(); // true
"abc 123!".isAlphanumeric(); // false
```

## onlyNumbers Example

The `onlyNumbers` method removes all non-numeric characters from the string and returns only the digits.

```dart
"(123)-456-7890".onlyNumbers(); // "1234567890"
```

## onlyLetters Example

The `onlyLetters` method removes all non-letter characters and returns only alphabetic characters.

```dart
"abc123!".onlyLetters(); // "abc"
```

## truncate Example

The `truncate` method shortens the string to the given length and appends an optional ellipsis.

```dart
"Hello World!".truncate(5); // "Hello..."
```

## removeAllWhitespace Example

The `removeAllWhitespace` method removes all whitespace characters from the string.

```dart
" Hello \n World ".removeAllWhitespace(); // "HelloWorld"
```

## toSnakeCase Example

The `toSnakeCase` method converts camelCase or PascalCase strings into snake_case format.

```dart
"helloWorld".toSnakeCase(); // "hello_world"
"MyHTTPResponse".toSnakeCase(); // "my_http_response"
```

## toCamelCase Example

The `toCamelCase` method converts a snake_case or kebab-case string to camelCase.

```dart
"hello_world".toCamelCase(); // "helloWorld"
"my-awesome-text".toCamelCase(); // "myAwesomeText"
```

## repeat Example

The `repeat` method repeats the string a given number of times and returns the concatenated result.

```dart
"ha".repeat(3); // "hahaha"
```

## mask Example

The `mask` method replaces a portion of the string (from start to end) with the provided mask character.

```dart
"1234567890".mask(start: 2, end: 6); // "12****7890"
"abcdef".mask(maskChar: "#"); // "######"
"Short".mask(start: 3); // "Sho*"
```

## isPalindrome Example

The `isPalindrome` getter checks if the string reads the same forward and backward, ignoring case and non-alphanumeric characters.

```dart
"A man, a plan, a canal: Panama".isPalindrome; // true
"racecar".isPalindrome; // true
"hello".isPalindrome; // false
```
## safeReverse Example

The `safeReverse` method reverses a string while preserving grapheme clusters (e.g., emojis, accented characters).

```dart
"hello".safeReverse(); // "olleh"
"👨‍👩‍👧‍👦".safeReverse(); // "👨‍👩‍👧‍👦" (grapheme-safe)
```
## chunked Example

The `chunked` method splits the string into chunks of the given size.

```dart
"abcdef".chunked(2); // ["ab", "cd", "ef"]
"hello".chunked(3); // ["hel", "lo"]
```
## take Example

The `take` method returns the first count characters from the string.

```dart
"hello".take(2); // "he"
"flutter".take(10); // "flutter" (clamped to length)
```
## drop Example

The `drop` method returns the string after removing the first count characters.

```dart
"hello".drop(2); // "llo"
"flutter".drop(10); // "" (clamped)
```

## padStartCustom Example

The `padStartCustom` method add pads to the beginning of the string to reach a specified width using the provided padding character/string.

```dart
"42".padStartCustom(5, "0"); // "00042"
"hello".padStartCustom(10, "-"); // "-----hello"
```

## padEndCustom Example

The `padEndCustom` method add pads to the end of the string to reach a specified width using the provided padding character/string.

```dart
"42".padEndCustom(5, "0"); // "42000"
"hi".padEndCustom(6, "*"); // "hi****"
```

## splitByLength Example

The `splitByLength` method add the string into substrings of the specified length. It is an alias of chunked.

```dart
"1234567890".splitByLength(3); // ["123", "456", "789", "0"]
```

## toSentenceCase Example

The `toSentenceCase` method converts a string to sentence case (first letter uppercase, rest lowercase).

```dart
"hello WORLD".toSentenceCase(); // "Hello world"
"FLUTTER".toSentenceCase(); // "Flutter"
```

## containsOnly Example

The `containsOnly` method checks if a string contains only characters from the allowed set.

```dart
"12345".containsOnly("0123456789"); // true
"abc123".containsOnly("abc"); // false
```

## removeSpecialCharacters Example

The `removeSpecialCharacters` method removes all non-alphanumeric characters (excluding spaces).

```dart
"Hello, World! 123.".removeSpecialCharacters(); // "Hello World 123"
"@#\$%^".removeSpecialCharacters(); // ""
```

## toBase64 Example

The `toBase64` method encodes the string into a Base64 string.

```dart
"hello".toBase64(); // "aGVsbG8="
```

## fromBase64 Example

Then `fromBase64` method decodes a Base64 string back to a regular string.

```dart
"aGVsbG8=".fromBase64(); // "hello"
```


## 🤝 Contributing

Contributions are welcome and greatly appreciated!

If you have suggestions for improvements, bug fixes, or new features, feel free to:

- Fork the repository
- Create a new branch:

  ```bash
  git checkout -b feature/my-feature
  ```

  ```bash
  git commit -m 'Added my feature'
  ```

  ```bash
  git push origin feature/my-feature
  ```

  Please make sure your code follows the Dart/Flutter style guide, is well-documented, and tested.

If you're not ready to submit code, you can still help by:

- Reporting bugs or issues
- Requesting new features
- Improving documentation

Thank you for helping improve this project! 🙌

## 💡 Tip:

This format ensures compatibility with both GitHub and pub.dev README previews. Let me know if you want to include a `CONTRIBUTING.md` link or a code of conduct reference too.

## 🙌 Credits

This package was created and is maintained by [Pratik Amonkar](https://github.com/PratikAmonkar).  
Contributions are welcome — see [CONTRIBUTING.md](CONTRIBUTING.md) for details.

If you use this package in your project, feel free to credit the author or link back to the [pub.dev page](https://pub.dev/packages/string_utilities).  
A simple mention helps support open source!

## 📄 License

This project is licensed under the [BSD 3-Clause License](LICENSE).  
Copyright © 2024 - present [Pratik Amonkar](https://pub.dev/packages/string_utilities)
