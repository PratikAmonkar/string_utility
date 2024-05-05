# String Utility

**String Utility** is a Dart package that provides a collection of useful extension methods for
working with strings in Dart and Flutter. The package includes functions for trimming, capitalizing,
reversing, retrieving words, and more.

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

## Getting Started

To use this package in your Flutter or Dart project, add the following dependency to
your `pubspec.yaml` file:

```yaml
dependencies:
  string_utility: ^1.0.0
```

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