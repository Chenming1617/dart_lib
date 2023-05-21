void main(List<String> args) {
  var ingredients = <String>{};
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);
  ingredients.add('gold');
  assert(ingredients.length == 3);

  ingredients.remove('gold');
  print(ingredients);
  assert(ingredients.length == 2);

  var atomicNumbers = Set.from([79, 22, 54]);
  print(atomicNumbers);
//belong,包含关系
  assert(ingredients.contains('titanium'));
  assert(ingredients.containsAll(['titanium', 'xenon']));
//求交集
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  print(intersection);
}
//conclusion
//List有序{可重复},Set无序{不能重复}
//.remove('') 删除特定元素
//Set.from()初始化一个集合
//.intersection(对象)求交集