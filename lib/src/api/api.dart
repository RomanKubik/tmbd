import 'package:tmdb/res/strings/api.dart';
import 'package:tmdb/src/model/api/session.dart';
import 'package:tmdb/src/model/api/token.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {

  Future<Token> getToken() async {
    final response = await http.get(_getUrl('authentication/token/new'));
    final jsonResponse = json.decode(response.body);
    return Token.fromJson(jsonResponse);
  }

  Future<Session> getGuestSession() async {
    final response = await http.get(_getUrl('authentication/guest_session/new'));
    final jsonResponse = json.decode(response.body);
    return Session.guestFromJson(jsonResponse);
  }

  String _getUrl(String url, {Map<String, dynamic> params}) {
    String call =  ApiKeys.baseUrl + url + '?api_key=' + ApiKeys.apiKey;
    if (params != null) {
      params.forEach((k, v) => call = call + "&$k=$v");
    }
    return call;
  }
}