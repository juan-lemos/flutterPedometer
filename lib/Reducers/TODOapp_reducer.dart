import 'package:flutter_pedometer/Models/TODOapp_state.dart';
// import 'package:me_suite/reducers/auth_reducer.dart';
// import 'package:me_suite/reducers/counter_reducer.dart';

AppState appReducer(state, action) {
  return new AppState(
    isLoading: false,
    // count: counterReducer(state.count, action),
    // currentUser: authReducer(state.currentUser, action),
  ); //new
}
