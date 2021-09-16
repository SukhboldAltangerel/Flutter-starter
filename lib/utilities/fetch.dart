import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

const baseUrl = 'http://localhost:9000/graphql';
const token =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywibmFtZSI6ItCh0q_RhdCx0L7Qu9C0IiwiaWF0IjoxNjMxMTc4MDY2fQ.BB3vjzK1DR3iSGH6_7RYKVbmuRy6wqZfsPmdZbq3NOE';

Future<Map> fetchQuery(String query) async {
  var url = Uri.parse(baseUrl);
  var res = await http.post(
    url,
    headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
    body: {'query': query},
  );
  if (res.statusCode == 200) {
    var resDecoded = jsonDecode(res.body);
    return resDecoded['data'];
  } else {
    print(jsonDecode(res.body));
    throw Exception('Failed to fetch query');
  }
}
