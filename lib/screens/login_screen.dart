

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:project_residue/firebase/auth.dart';
import 'package:project_residue/screens/home_screen.dart';


class login_screen extends StatelessWidget {
  static const String id = 'login_screen';
  login_screen({Key? key}) : super(key: key);
  final AuthMethords _authMethords = AuthMethords();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            SignInButton(
              Buttons.Google,
              onPressed: () async {
                  bool result = await _authMethords.signInWIthGoogle();
                  if(result){
                    // ignore: use_build_context_synchronously
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeScreen()),
                        );
                  }
                    
                  },
              )
          ],
        ),
      ),
    );
  }
}