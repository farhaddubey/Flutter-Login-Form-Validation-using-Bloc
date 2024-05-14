import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState>{
  AuthBloc():super(AuthInitial()){
    on<AuthLoginRequested>((event, emit) async {
      emit(AuthLoading());
      try{
        final email=event.email;
        final password = event.password;
        // EMAIL validation required.
        if(password.length<6){
          emit(AuthFailure('Pasword cannot be less than 6 characters.'));
          return;
        }
        await Future.delayed(const Duration(seconds: 1),(){
          return emit(AuthSuccess(uid: '$email-$password'));
        });
        // Future.delayed
      }catch(e){
        return emit(AuthFailure(e.toString()));
      }

    });
  }
}
