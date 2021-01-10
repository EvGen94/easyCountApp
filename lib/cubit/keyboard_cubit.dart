import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'keyboard_state.dart';

class KeyboardCubit extends Cubit<KeyboardState> {
  KeyboardCubit() : super(KeyboardInitial());
}
