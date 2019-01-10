import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tmdb/res/values/styles.dart';
import 'package:tmdb/src/action/common_actions.dart';
import 'package:tmdb/src/middleware/app_middleware.dart';
import 'package:tmdb/src/model/app_state.dart';
import 'package:tmdb/src/ui/auth_page.dart';
import 'package:tmdb/src/ui/main_page.dart';
import 'package:tmdb/src/reducer/app_reducer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final store = Store<AppState>(appReducer,
      initialState: AppState(),
      middleware: createAppMiddleware());

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
          title: 'The Movies DB',
          theme: AppTheme.theme,
          routes: {
            "/": (context) {
              return MainPage(
                title: 'Welcome',
                onInit: () {
                  StoreProvider.of<AppState>(context)
                      .dispatch(LaunchAppAction(context));
                },
              );
            },
            "/auth": (context) {
              return AuthPage();
            }
          }
      ));
  }
}
