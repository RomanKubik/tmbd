import 'package:tmdb/src/api/api.dart';
import 'package:tmdb/src/model/api/session.dart';

class AuthRepository {
  final Api _api;
  Session _session;

  AuthRepository(this._api);

  Future<Session> getSession() {
    return _session != null ? Future(() => _session) : Future.error(Error());
  }
}