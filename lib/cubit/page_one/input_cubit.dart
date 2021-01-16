import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'input_state.dart';

class InputCubit extends Cubit<InputState> {
  InputCubit() : super(InputInitial());

  getKey(int pressedKey) {
    //  int key;
    //  key = pressedKey;
    emit(Input(pressedKey));
  }
}
