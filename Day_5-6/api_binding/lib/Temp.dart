import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/users');
  var response = await http.get(url);
  print("Response status: ${response.statusCode}");
  print("Response body: ${response.body}");
}
