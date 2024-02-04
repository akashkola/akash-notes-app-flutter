import 'package:notes_app/views/views.dart';

const verifyEmailViewRoute = "/verify-email/";
const loginViewRoute = "/login/";
const registerViewRoute = "/register/";
const notesViewRoute = "/notes/";

final routes = {
  verifyEmailViewRoute: (context) => const VerifyEmailView(),
  loginViewRoute: (context) => const LoginView(),
  registerViewRoute: (context) => const RegisterView(),
  notesViewRoute: (context) => const NotesView(),
};
