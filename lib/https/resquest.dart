import 'package:http/http.dart' as http;
import 'package:getxapi/https/url.dart';

class Request {
  dynamic url;
  dynamic body;

  Request({this.url, this.body});

  Future<http.Response> get() {
    return http.get(Uri.parse(urlBase + url)).timeout(Duration(minutes: 2));
  }

  Future<http.Response> post() {
    return http
        .post(Uri.parse(urlBase + url), body: body)
        .timeout(Duration(minutes: 2));
  }
}
