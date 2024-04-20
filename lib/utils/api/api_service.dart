import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiSerice {
  Future<Response> postUrl(
      {required String url, required body, required String token,}) async {
    var newUrl = Uri.parse(url);
    var response = await http.post(newUrl, body: body,headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Bearer $token'
    }); 
    return response;
  }
}
