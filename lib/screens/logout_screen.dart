import 'package:flutter/material.dart';
import 'package:flutter_apple_signin/providers/authentication_provider.dart';
import 'package:provider/provider.dart';

class LogoutPage extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<AuthenticationProvider>().signOut();
                },
                child: Text("Sign out"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
