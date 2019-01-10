import 'package:meta/meta.dart';
import 'package:tmdb/src/model/api/session.dart';

@immutable
class AppState {
  final Session session;

  AppState({this.session});
}