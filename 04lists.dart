void main(List<String> args) {
  var grains = <String>[];
  assert(grains.isEmpty);
  var fruits = ['apples', 'oranges'];
  fruits.add('kiwis');
  print(fruits); //已经add了kiwis
  fruits.addAll(['grapes', 'bananas']);
  assert(fruits.length == 5);
  //remove
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);
  print(fruits);

  fruits.clear();
  assert(fruits.isEmpty);
  //creat a list 有3个重复的内容
  var vegetable = List.filled(3, 'broccoli');
  print(vegetable);
  assert(vegetable.every((v) => v == 'broccoli'));

  var fruits1 = ['bananas', 'apples', 'oranges'];
  fruits1.sort((a, b) => a.compareTo(b)); //
  assert(fruits1[0] == 'apples');
  print(fruits1[0]);

  var fruits2 = <String>[];
  fruits2.add('apples');
  var fruit2 = fruits2[0];
  //assert(fruit2 is String);
}
//conclusion
//.add，添加列表元素
//.addALL，list 后面加一个列表
//.indexOf,索引在列表中的位置，从0开始
//.removeAt(num),将列表中的索引为num的内容去掉
//List.filled(num,'str'),创建一个列表列表的内容全为str，数量为num
