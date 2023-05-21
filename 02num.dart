void main() {
  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);
  assert(num.parse('42') is int);
  assert(num.parse('0x42') is int);
  assert(num.parse('0.50') is double);
  assert(int.parse('42', radix: 16) == 66);
  assert(42.toString() == '42');
  assert(123.456.toString() == '123.456');
  assert(123.456.toStringAsFixed(2) == '123.46');
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120.0);
  String urlstring = 'http://www.baidu.com';
  assert(
      urlstring.startsWith('https'), 'URL ($urlstring)should start with https');
  print('123win');
}
//assert 断言，断言的作用是：如果表达式的求值结果不满足需要，则打断代码的执行。
//所以后面的print 没有执行。