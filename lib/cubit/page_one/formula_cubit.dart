import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../classes/ngenerator.dart';

part 'formula_state.dart';


class FormulaCubit extends Cubit<FormulaState> {
  final Generator ngenerator;

  FormulaCubit(this.ngenerator) : super(FormulaInitial());

  void formulaInitial() {
    emit(FormulaInitial());
  }

  void getFormula(bool swich) {

     List<int> _nlist = ngenerator.generateRandomNumber(swich);
    emit(FormulaG( listdata: _nlist));
  }

}