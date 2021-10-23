part of 'settings_cubit.dart';

@immutable
abstract class SettingsState {}

class SettingsInitial extends SettingsState {}

class SettingsEmit extends SettingsState {
  List<int> listdata = List<int>(3);
  SettingsEmit(this.listdata);
}
