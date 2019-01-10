import 'package:redux/redux.dart';
import 'package:tmdb/src/action/auth_actions.dart';
import 'package:tmdb/src/model/api/session.dart';

final sessionReducer = combineReducers<Session> ([
  TypedReducer<Session, LogInSuccessfulAction>(_setSession),
]);

Session _setSession(Session state, LogInSuccessfulAction action) {
  return action.session;
}
