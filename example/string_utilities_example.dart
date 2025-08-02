import 'package:string_utilities/string_utilities.dart';

void main() {
  print('--- Validation ---');
  print('Email valid: ${'test@example.com'.isEmail}'); // true
  print('Phone number valid: ${'+919876543210'.isPhoneNumber}'); // true
  print('URL valid: ${'https://flutter.dev'.isUrl}'); // true
  print('Is numeric: ${'123.45'.isNumeric}'); // true
  print('Is alphanumeric: ${'abc123'.isAlphanumeric}'); // true

  print('\n--- Extraction ---');
  print('Only numbers: ${'abc123def456'.onlyNumbers}'); // 123456
  print('Only letters: ${'abc123def456'.onlyLetters}'); // abcdef

  print('\n--- Transformation ---');
  print('Truncate: ${'This is a long string'.truncate(10)}'); // This is...
  print(
      'Remove all whitespace: ${'  Hello   World  '.removeAllWhitespace}'); // HelloWorld
  print(
      'To snake_case: ${'helloWorldExample'.toSnakeCase}'); // hello_world_example
  print(
      'To camelCase: ${'hello_world_example'.toCamelCase}'); // helloWorldExample

  print('\n--- Utility ---');
  print('Repeat: ${'ha'.repeat(3)}'); // hahaha
  print(
      'Mask: ${'1234567812345678'.mask(start: 4, end: 12)}'); // 1234********5678

  print('\n--- Palindrome Check ---');
  print(
      'Is palindrome: ${'A man, a plan, a canal: Panama'.isPalindrome}'); // true
  print('Is palindrome: ${'Hello, World!'.isPalindrome}'); // false
}
