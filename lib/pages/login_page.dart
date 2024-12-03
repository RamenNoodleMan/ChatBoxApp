import 'package:chatterbox/components/my_button.dart';
import 'package:chatterbox/components/my_textfield.dart';
import 'package:flutter/material.dart';

import '../services/auth/auth_service.dart';

class LoginPage extends StatelessWidget {
//email and password controller
final TextEditingController _emailController =
TextEditingController();
final TextEditingController _pwController =
TextEditingController();

//tap to go to register page
 final void Function()? onTap;

LoginPage ({super.key, required this.onTap});

//login method
  void login(BuildContext context) async{
//auth service
  final authService = AuthService();

  //try login
try {
  await authService.signInWithEmailPassword(_emailController.text, _pwController.text);
}
    //catch any error
catch (e) {
  showDialog(context: context,
      builder: (context) => AlertDialog(
        title: Text(e.toString()),
      ));
}

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:
      Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.mark_email_read_sharp,
            size: 100,
            color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 20),

            //Welcome back msg
            Text('Welcome to My Chat N Messenger App', style: TextStyle(color: Theme.of(context).colorScheme.primary,
            fontSize: 18,
            ),),
            const SizedBox(height: 25),


            //Email
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
              focusNode: null,
            ),
            const SizedBox(height: 20),

            //pswd textfield

            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwController, focusNode: null,

            ),
            const SizedBox(height: 20),

            //login button
            MyButton(
              text:"LOGIN",
              onTap: () => login(context),

            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member? ",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                GestureDetector(
                  onTap:onTap,
                  child: Text("Register now", style: TextStyle(fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary)),
                ),
              ],
            ),


            //register
          ],
        ),
      ),
    );
  }

}