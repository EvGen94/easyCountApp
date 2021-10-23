import 'package:bloc/bloc.dart';
import 'package:easycount/classes/settings_model.dart';
import 'package:meta/meta.dart';

import '../../../classes/settings_model.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  void settingsInitial() {
    emit(SettingsInitial());
  }

  void settingsemit(List<int> _list) {
    List<int> _nlist = _list;
    emit(SettingsEmit(_nlist));
  }
}
