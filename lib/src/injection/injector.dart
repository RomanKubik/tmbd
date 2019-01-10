import 'package:tmdb/src/api/api.dart';
import 'package:tmdb/src/repository/auth_repository.dart';

class Injector {

  static Api _api;
  static AuthRepository _authRepository;

  static get api {
    if (_api == null)
      _api = new Api();
    return _api;
  }

  static get authRepository {
    if (_authRepository == null)
      _authRepository = new AuthRepository(api);
    return _authRepository;
  }

}