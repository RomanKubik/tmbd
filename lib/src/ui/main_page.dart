import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tmdb/src/model/api/session.dart';
import 'package:tmdb/src/model/app_state.dart';

class MainPage extends StatefulWidget {
  final String title;
  final void Function() onInit;

  MainPage({Key key, this.title, this.onInit}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    debugPrint('initState');
    widget.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build');
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (BuildContext context, vm) {
        return Text("Main screen");
      },
    );
  }
}

class _ViewModel {
  final Session session;

  _ViewModel({@required this.session});

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(session: store.state.session);
  }
}
