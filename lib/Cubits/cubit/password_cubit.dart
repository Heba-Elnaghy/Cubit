import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(PasswordInitial());

  bool isShown = false;

  void showHidePass() {
    isShown = !isShown;

    emit(PasswordInitial());
    // isShown = !isShown;
  }
}
