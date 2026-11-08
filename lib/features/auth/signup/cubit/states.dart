// Karim Toson || kareemtoson1@gmail.com || Fri Nov 06 2026 19:34:38
sealed class SignUpStates {}

class InititialState extends SignUpStates {}

class LoadingState extends SignUpStates {}

class SuccessState extends SignUpStates {}

class ErrorState extends SignUpStates {
  final String error;
  ErrorState(this.error);
}
