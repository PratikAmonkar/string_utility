## [1.1.1] - 2025-07-26

### Added

- 📦 **Example file added** to demonstrate usage of all utility functions. You can now find it in the `example/` folder and view it directly on pub.dev under the "Example" tab.

### Changed

- Updated `pubspec.yaml` to include example directory reference.

### Fixed

- Minor typo corrections in doc comments.

## [1.1.0] - 2025-07-26

### Added

- `isEmail`: Validates whether a string is a valid email address.
- `isPhoneNumber`: Checks if the string is a valid international phone number.
- `isUrl`: Validates if the string is a well-formed URL.
- `isNumeric`: Checks if the string contains a valid number (integer or decimal).
- `isAlphanumeric`: Checks if the string contains only letters and numbers.
- `onlyNumbers`: Extracts only numeric digits from the string.
- `onlyLetters`: Extracts only alphabetic characters from the string.
- `truncate`: Truncates the string to a specified length with optional ellipsis.
- `removeAllWhitespace`: Removes all whitespace characters from the string.
- `toSnakeCase`: Converts a camelCase or PascalCase string to snake_case.
- `toCamelCase`: Converts a snake_case or kebab-case string to camelCase.
- `repeat`: Repeats the string a specified number of times.
- `mask`: Masks a portion of the string with a given character, useful for sensitive data masking (e.g., credit cards, emails).

### Changed

- N/A

### Fixed

- N/A

## [1.0.0] - 2024-05-04

### Added

- Initial release with a collection of extension methods for the `String` type.
- `ifEmpty`: Returns a default value if a string is empty.
- `isBlank`: Checks if a string is blank (empty or contains only whitespace).
- `toCapitalize`: Capitalizes the first letter of a string.
- `toReverse`: Reverses the characters in a string.
- `toLowerCase`: Converts a string to lowercase.
- `toCapitalizeEachWord`: Capitalizes the first letter of each word in a string.
- `removeLastWord`: Removes the last word from a string.
- `getLastWord`: Retrieves the last word from a string.
- `isEquals`: Compares two strings with optional case-insensitive comparison and trimming.

### Changed

- N/A

### Fixed

- N/A