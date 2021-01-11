part of 'input_cubit.dart';

@immutable
abstract class InputState {}

class InputInitial extends InputState {}

class Input extends InputState {
  int key;

  Input(this.key);
}
