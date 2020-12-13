part of 'page_cubit.dart';

@immutable
abstract class PageState {}

class PageInitial extends PageState {}

class PageCounerStart extends PageState {}

class PageGenNumber extends PageState {
 List listdata = List<int>(3); 
PageGenNumber({@required this.listdata});
}

class PagePressedKey extends PageState {
 int key;
PagePressedKey({@required this.key});
}




class PageResults extends PageState {}

