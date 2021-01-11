import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../classes/ngenerator.dart';

part 'formula_state.dart';


class FormulaCubit extends Cubit<FormulaState> {
  final Generator ngenerator;

  FormulaCubit(this.ngenerator) : super(FormulaInitial());

  void formulaInitial() {
    emit(FormulaInitial());
  }

  int getFormula() {
     List<int> _nlist = ngenerator.generateRandomNumber();
    emit(FormulaG( listdata: _nlist));
  }

}