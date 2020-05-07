

import 'package:flutter/material.dart';
import 'package:travel_app/src/bloc/login_bloc.dart';
export 'package:travel_app/src/bloc/login_bloc.dart';



class Provider extends InheritedWidget {

final loginbloc = LoginBloc();

Provider({Key key, Widget child})
: super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static LoginBloc of ( BuildContext context ) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>().loginbloc);
  }

}