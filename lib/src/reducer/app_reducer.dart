import 'package:tmdb/src/model/app_state.dart';
import 'package:tmdb/src/reducer/session_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(session: sessionReducer(state.session, action));
}
