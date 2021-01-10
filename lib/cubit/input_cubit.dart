import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'input_state.dart';

class InputCubit extends Cubit<InputState> {
  InputCubit() : super(InputInitial());
}
