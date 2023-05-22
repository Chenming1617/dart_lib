void main(){
  var uri = 'https://example.org/api?foo=some message';

  var encoded = Uri.encodeFull(uri);
  assert(encoded == 'https://example.org/api?foo=some%20message');

  var decoded = Uri.decodeFull(encoded);
  assert(uri == decoded);
  print("123");
  var uri1 = Uri.parse('https://example.org:8080/foo/bar#frag');

  assert(uri1.scheme == 'https');
  assert(uri1.host == 'example.org');
  assert(uri1.path == '/foo/bar');
  assert(uri1.fragment == 'frag');
  assert(uri1.origin == 'https://example.org:8080'); 
  print("jiaohu");
}