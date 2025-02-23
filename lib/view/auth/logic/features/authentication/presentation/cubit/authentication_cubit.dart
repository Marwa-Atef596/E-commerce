// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, unused_element

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
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

  Future<void> SignUP(
      {required String name, required pass, required email}) async {
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

  GoogleSignInAccount? googleSignInAccount;
  Future<AuthResponse> googleSignIn() async {
    emit(GoogleSignInLoading());
    const webClientId =
        '542841208212-1mc2k4749pj2pnsraidv2mhcvvhm4acb.apps.googleusercontent.com';

    final GoogleSignIn googleSignIn = GoogleSignIn(
      serverClientId: webClientId,
    );

    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) {
      return AuthResponse();
    }
    final googleAuth = await googleUser.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null || idToken == null) {
      emit(GoogleSignInFailure());
      return AuthResponse();
    }

    AuthResponse response = await client.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );

    emit(GoogleSignInSuccess());
    return response;
  }

  Future<void> SignOut() async {
    emit(LogoutLoading());
    try {
      await client.auth.signOut();
      emit(LogoutSuccess());
    } catch (e) {
      emit(LogoutFailure(errMessage: e.toString()));
    }
  }
}
