import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:notes_app/constants/constants.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify email"),
      ),
      body: Column(
        children: [
          const Text(
            "We've sent you an email verification. Please open it to verify your account",
          ),
          const Text(
            "If you haven't received a verification email yet, press the button below",
          ),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              if (user != null) {
                await user.sendEmailVerification();
              }
            },
            child: const Text("Send email verification"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                registerViewRoute,
                (route) => false,
              );
            },
            child: const Text("Restart"),
          ),
        ],
      ),
    );
  }
}
