import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_color_state.dart';

class ChangeColorCubit extends Cubit<ChangeColorState> {
  ChangeColorCubit() : super(ChangeColorInitial());

  int selectedIndex = 0;

  void changeIndex(int index) {
    selectedIndex = index;

    emit(ChangeColorInitial());
  }
}
