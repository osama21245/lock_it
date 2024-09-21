import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../entities/user_model.dart';

part 'app_user_state.dart';

class AppUserCubit extends Cubit<AppUserState> {
  AppUserCubit() : super(AppUserInitial());

  void updateUser(UserModel? user) {
    if (user != null) {
      emit(AppUserIsLogIn(user: user));
    }
  }
}
