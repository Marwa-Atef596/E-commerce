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
