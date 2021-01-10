import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'formula_state.dart';

class FormulaCubit extends Cubit<FormulaState> {
  FormulaCubit() : super(FormulaInitial());
}
