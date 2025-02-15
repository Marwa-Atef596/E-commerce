// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  SupabaseClient client = Supabase.instance.client;

  Future<void> login({required pass, required email}) async {
    emit(LoginLoading());
    try {
      await client.auth.signInWithPassword(password: pass, email: email);
      emit(LoginSuccess());
    } on AuthException catch (e) {
      log(e.message);
      emit(LoginFailure(errMessage: e.message));
    } catch (e) {
      log(e.toString());
      emit(LoginFailure(errMessage: e.toString()));
    }
  }



  Future<void> SignUP({required String name,required pass, required email}) async {
    emit(SignUpLoading());
    try {
      await client.auth.signUp(password: pass, email: email);
      emit(SignUpSuccess());
    } on AuthException catch (e) {
      log(e.message);
      emit(SignUpFailure(errMessage: e.message));
    } catch (e) {
      log(e.toString());
      emit(SignUpFailure(errMessage: e.toString()));
    }
  }
}
