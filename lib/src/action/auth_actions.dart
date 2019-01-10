import 'package:flutter/foundation.dart';
import 'package:tmdb/src/model/api/session.dart';

class LogInAction {}

class LogInSuccessfulAction {
  final Session session;

  LogInSuccessfulAction({@required this.session});
}

class LogInFailAction {
  final dynamic error;

  LogInFailAction({this.error});
}