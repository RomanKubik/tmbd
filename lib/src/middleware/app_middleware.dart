import 'package:redux/redux.dart';
import 'package:tmdb/src/middleware/launch_middleware.dart';
import 'package:tmdb/src/model/app_state.dart';

List<Middleware<AppState>> createAppMiddleware() {
  return [appLaunchedMiddleware()];
}