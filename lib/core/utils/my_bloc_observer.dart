import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  onChange(bloc, change) {
    super.onChange(bloc, change);
    log(change.toString());
  }
}