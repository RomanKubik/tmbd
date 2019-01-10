import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:tmdb/src/action/auth_actions.dart';
import 'package:tmdb/src/action/common_actions.dart';
import 'package:tmdb/src/injection/injector.dart';
import 'package:tmdb/src/model/app_state.dart';
import 'package:tmdb/src/repository/auth_repository.dart';
import 'package:tmdb/src/ui/auth_page.dart';

TypedMiddleware<AppState, LaunchAppAction> appLaunchedMiddleware() {
  return TypedMiddleware<AppState, LaunchAppAction>(
      _appLaunchMiddleware(Injector.authRepository));
}

Middleware<AppState> _appLaunchMiddleware(AuthRepository authRepository) {
  return (Store<AppState> store, action, NextDispatcher next) {
    authRepository.getSession().then((session) {
      store.dispatch(LogInSuccessfulAction(session: session));
    }).catchError((error) {
      Navigator.of(action.context).push(MaterialPageRoute(builder: (context) => AuthPage()));
    });
    next(action);
  };
}
