// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());
  int currentIndex = 0;
  void ChangeCurrentIndes(int index) {
    currentIndex = index;
    emit(NavBarChange());
  }
}
