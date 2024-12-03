
import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../services/auth/auth_service.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController =
  TextEditingController();
  final TextEditingController _pwController =
  TextEditingController();
  final TextEditingController _confirmPwController =
  TextEditingController();

  //tap to go to register page
  final void Function()? onTap;

  RegisterPage ({super.key, required this.onTap});
  //register method
  void register(BuildContext context) {
    //get auth service
    final _auth = AuthService();

    //password match -> create user
    if (_pwController.text == _confirmPwController.text) {
      try {
      _auth.signUpWithEmailPassword(
          _emailController.text,
          _pwController.text,
      );
    } catch (e){
        showDialog(context: context,
            builder: (context) => AlertDialog(
              title: Text(e.toString()),
            ));
      }
  }
    //password does not match, show error
    else{
      showDialog(context: context,
          builder: (context) => const AlertDialog(
            title: Text("Password Does Not Match"),
          ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:
      Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.mark_email_read_sharp,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 18),

            //Welcome back msg
            Text('Let Us Create An Account!', style: TextStyle(color: Theme.of(context).colorScheme.primary,
              fontSize: 20,
            ),),
            const SizedBox(height: 18),


            //Email
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
              focusNode: null,
            ),
            const SizedBox(height: 18),

            //pswd textfield
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwController, focusNode: null,
            ),
            const SizedBox(height: 18),

            MyTextField(
              hintText: "Confirm Password",
              obscureText: true,
              controller: _confirmPwController,
              focusNode: null,
            ),
            const SizedBox(height: 18),

            //login button
            MyButton(
              text:"REGISTER",
              onTap: () => register(context),

            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ",
                  style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                GestureDetector(
                  onTap: onTap,
                  child: Text("Login now", style: TextStyle(fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary)),
                ),
              ],
            ),
            //register
          ],
        ),
      ),
    );

  }}