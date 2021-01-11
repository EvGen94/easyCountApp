part of 'formula_cubit.dart';

@immutable
abstract class FormulaState {}

class FormulaInitial extends FormulaState {}

class FormulaG extends FormulaState {
  List<int> listdata = List<int>(3);
  FormulaG({@required this.listdata});
}
