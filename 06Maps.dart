void main(List<String> args) {
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  print(hawaiianBeaches);
  var searchTerms = Map();
  var nobleGases = Map<int, String>();
  nobleGases = {54: 'xenon'};
  print(nobleGases[54]);
  var keys=hawaiianBeaches.keys;
  print(keys);
  assert(Set.from(keys).contains('Oahu'));

  var values = hawaiianBeaches.values;
  print(values);
  assert(values.any((v) => v.contains('Waikiki')));
  assert(hawaiianBeaches.containsKey('Oahu'));
  assert(!hawaiianBeaches.containsKey('Florida'));
  var coffees = <String>[];
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  assert(coffees.isEmpty);
  assert(teas.isNotEmpty);

  teas.forEach((tea) =>print('I like drink $tea tea'));
  hawaiianBeaches.forEach((k, v) {
  print('I want to visit $k and swim at $v');
  });
}
