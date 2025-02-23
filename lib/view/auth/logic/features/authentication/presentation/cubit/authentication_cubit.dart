// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, unused_element

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../model/user_data_model.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  SupabaseClient client = Supabase.instance.client;

  Future<void> login({required pass, required email}) async {
    emit(LoginLoading());
    try {
      await client.auth.signInWithPassword(password: pass, email: email);
      await getUserData();
      emit(LoginSuccess());
    } on AuthException catch (e) {
      log(e.message);
      emit(LoginFailure(errMessage: e.message));
    } catch (e) {
      log(e.toString());
      emit(LoginFailure(errMessage: e.toString()));
    }
  }

  Future<void> SignUP({
    required String name,
    required pass,
    required email,
  }) async {
    emit(SignUpLoading());
    try {
      await client.auth.signUp(
        password: pass,
        email: email,
      );
      await UserData(email: email, name: name);
      await getUserData();

      emit(SignUpSuccess());
    } on AuthException catch (e) {
      log(e.message);
      emit(SignUpFailure(errMessage: e.message));
    } catch (e) {
      log(e.toString());
      emit(SignUpFailure(errMessage: e.toString()));
    }
  }

  GoogleSignInAccount? googleUser;
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
    await UserData(
      email: googleUser.email,
      name: googleUser.displayName!,
    );
    await getUserData();

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

  Future<void> resetPassword({required String email}) async {
    emit(ResetPasswordLoading());
    try {
      await client.auth.resetPasswordForEmail(email);
      emit(ResetPasswordSuccess());
    } on Exception catch (e) {
      emit(ResetPasswordFailure(errMessage: e.toString()));
    }
  }

  Future<void> UserData({required String email, required String name}) async {
    emit(UserDataAddedLoading());
    try {
      await client.from('users').upsert(
        {
          'id': client.auth.currentUser!.id,
          'name': name,
          'email': email,
        },
      );
      emit(UserDataAddedSuccess());
    } catch (e) {
      emit(
        UserDataAddedFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }

  UserDataModel? userDataModel;
  Future<void> getUserData() async {
    emit(GetUserDataLoading());
    try {
      final List<Map<String, dynamic>> data = await client
          .from('users')
          .select()
          .eq("id", client.auth.currentUser!.id);
      userDataModel = UserDataModel(
          email: data[0]["email"], name: data[0]["name"], id: data[0]["id"]);
      emit(GetUserDataSuccess());
    } catch (e) {
      log(e.toString());
      emit(GetUserDataError());
    }
  }
}
