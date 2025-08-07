abstract class SingUpState {}

class SingUpLoadingState extends SingUpState{}

class SingUpInitialState extends SingUpState{}

class SingUpSucessState extends SingUpState{}

class SingUpErrorState extends SingUpState{
  final String message;

  SingUpErrorState(this.message);
}
