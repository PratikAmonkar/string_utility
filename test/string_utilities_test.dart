import 'package:string_utilities/string_utilities.dart';
import 'package:test/test.dart';

void main() {
  group('StringExtensions', () {
    test('ifEmpty', () {
      expect(''.ifEmpty('default'), equals('default'));
      expect('hello'.ifEmpty('default'), equals('hello'));
    });

    test('isBlank', () {
      expect('   '.isBlank(), isTrue);
      expect('abc'.isBlank(), isFalse);
    });

    test('toCapitalize', () {
      expect('hello'.toCapitalize(), equals('Hello'));
      expect(''.toCapitalize(), equals(''));
    });

    test('toReverse', () {
      expect('Flutter'.toReverse(), equals('rettulF'));
    });

    test('toLowerCase', () {
      expect('HELLO'.toLowerCase(), equals('hello'));
    });

    test('toCapitalizeEachWord', () {
      expect('hello world'.toCapitalizeEachWord(), equals('Hello World'));
    });

    test('removeLastWord', () {
      expect('One Two Three'.removeLastWord(), equals('One Two'));
      expect('Word'.removeLastWord(), equals(''));
    });

    test('getLastWord', () {
      expect('One Two Three'.getLastWord(), equals('Three'));
      expect(''.getLastWord(), equals(''));
    });

    test('isEquals', () {
      expect('hello'.isEquals('HELLO'), isFalse);
      expect('hello'.isEquals('HELLO', ignoreCase: true), isTrue);
      expect(' hello '.isEquals('hello', trim: true), isTrue);
      expect(' hello '.isEquals('HELLO', ignoreCase: true, trim: true), isTrue);
    });

    test('isEmail', () {
      expect('test@example.com'.isEmail(), isTrue);
      expect('not-an-email'.isEmail(), isFalse);
    });

    test('isPhoneNumber', () {
      expect('+12345678901'.isPhoneNumber(), isTrue);
      expect('123'.isPhoneNumber(), isFalse);
    });

    test('isUrl', () {
      expect('https://flutter.dev'.isUrl(), isTrue);
      expect('invalid-url'.isUrl(), isFalse);
    });

    test('isNumeric', () {
      expect('123'.isNumeric(), isTrue);
      expect('123.45'.isNumeric(), isTrue);
      expect('abc'.isNumeric(), isFalse);
    });

    test('isAlphanumeric', () {
      expect('abc123'.isAlphanumeric(), isTrue);
      expect('abc!@#'.isAlphanumeric(), isFalse);
    });

    test('onlyNumbers', () {
      expect('(123) 456-7890'.onlyNumbers(), equals('1234567890'));
    });

    test('onlyLetters', () {
      expect('abc123!'.onlyLetters(), equals('abc'));
    });

    test('truncate', () {
      expect('Hello, world!'.truncate(5), equals('Hello...'));
      expect('Short'.truncate(10), equals('Short'));
    });

    test('removeAllWhitespace', () {
      expect(' H e l l o '.removeAllWhitespace(), equals('Hello'));
    });

    test('toSnakeCase', () {
      expect('helloWorld'.toSnakeCase(), equals('hello_world'));
    });

    test('toCamelCase', () {
      expect('hello_world'.toCamelCase(), equals('helloWorld'));
      expect('hello-world'.toCamelCase(), equals('helloWorld'));
    });

    test('repeat', () {
      expect('ha'.repeat(3), equals('hahaha'));
    });

    test('mask', () {
      expect('1234567890'.mask(start: 2, end: 6), equals('12****7890'));
      expect('short'.mask(start: 5), equals('short'));
    });
  });
}
