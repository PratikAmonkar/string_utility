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

    test('isPalindrome', () {
      expect('A man, a plan, a canal: Panama'.isPalindrome, isTrue);
      expect('Hello'.isPalindrome, isFalse);
    });

    test('safeReverse', () {
      expect('hello 👋'.safeReverse(), equals('👋 olleh'));
    });

    test('chunked', () {
      expect('Flutter'.chunked(2), equals(['Fl', 'ut', 'te', 'r']));
    });

    test('take', () {
      expect('Hello'.take(2), equals('He'));
    });

    test('drop', () {
      expect('Hello'.drop(2), equals('llo'));
    });

    test('padStartCustom', () {
      expect('42'.padStartCustom(5, '0'), equals('00042'));
      expect('42'.padStartCustom(2, '0'), equals('42'));
    });

    test('padEndCustom', () {
      expect('Hi'.padEndCustom(5, '_'), equals('Hi___'));
      expect('Hi'.padEndCustom(2, '_'), equals('Hi'));
    });

    test('splitByLength', () {
      expect('abcdef'.splitByLength(3), equals(['abc', 'def']));
    });

    test('toSentenceCase', () {
      expect('hELLO'.toSentenceCase(), equals('Hello'));
      expect(''.toSentenceCase(), equals(''));
    });

    test('containsOnly', () {
      expect('12345'.containsOnly('1234567890'), isTrue);
      expect('abc123'.containsOnly('abc'), isFalse);
    });

    test('removeSpecialCharacters', () {
      expect('Hello@World!'.removeSpecialCharacters(), equals('HelloWorld'));
    });

    test('toBase64', () {
      expect('Hello'.toBase64(), equals('SGVsbG8='));
    });

    test('fromBase64', () {
      expect('SGVsbG8='.fromBase64(), equals('Hello'));
    });

    test('mask', () {
      expect('1234567890'.mask(start: 2, end: 6), equals('12****7890'));
      expect('short'.mask(start: 5), equals('short'));
    });
  });
}
