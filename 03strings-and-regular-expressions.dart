main() {
  //String 定义了split(),contains(),startWith(),endWith()

  assert('Never odd or even'.contains('odd'));
  assert('Never odd or even'.startsWith('Never'));
  assert('Never odd or even'.endsWith('even'));
  assert('Never odd or even'.indexOf('odd') == 6);
  assert('Never odd or even'.substring(6, 9) == 'odd');
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');
  assert('Never odd or even'[0] == 'N');
  for (final char in 'hello'.split('')) {
    print(char);
  }
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);
  //字母大小写转换
  assert('web apps'.toUpperCase() == 'WEB APPS');
  assert('WEB APPS'.toLowerCase() == 'web apps');
  //Trimming 和空字符串
  assert('hello'.trim() == 'hello');
  assert(''.isEmpty);
  assert('     '.isNotEmpty);
  //替换部分字符串.replaceAll
  var greetingTemplate = 'Hello,NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
  assert(greeting != greetingTemplate);
  print(greeting);
  //构建一个字符串
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for')
    ..writeAll(['efficient', 'string', 'creation'], '  ')
    ..write('.');
  //var fullString = sb.toString();
  //assert(fullString == 'Use a StringBuffer');
  //正则表达式
  var numbers = RegExp(r'\d+');
  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  assert(exedOut == 'llamas live XX to XX years');
  //you can work directly with RegExp class
  var numbers1 = RegExp(r'\d+');
  var someDigits1 = 'llamas live 15 to 20 years';
  assert(numbers1.hasMatch(someDigits1));
  for (final match in numbers.allMatches(someDigits1)) {
    print(match.group(0));
  }
}
