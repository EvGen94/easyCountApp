import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../ngenerator.dart';
part 'page_state.dart';

class PageCubit extends Cubit<PageState> {
  final Generator ngenerator;

  PageCubit(this.ngenerator) : super(PageInitial());

  void initState() {
    emit(PageInitial());
  }

  List<int> getNumbers() {
    final List<int> _nlist = ngenerator.generateRandomNumber();
    emit(PageGenNumber(listdata: _nlist));
  }

  int getPressedKey(int keyPressed) {
    emit(PagePressedKey(key: keyPressed));
  }

  /* List<int> counterStart() {
    final List<int> _nlist = ngenerator.generateRandomNumber();
    emit(PageNewNumber(listdata: _nlist));
  }*/

}
