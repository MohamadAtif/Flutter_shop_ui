import 'package:flutter/material.dart';
import 'package:resturaunts_menu/config.dart';
import 'package:resturaunts_menu/widgets/my_button.dart';
import 'package:resturaunts_menu/widgets/mytextfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: myPrimaryColor,
          title: const Center(child: Text('LOGIN')),
        ),
        body: SafeArea(
            child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              'images/restaurant.png',
              height: 130,
            ),
            const SizedBox(
              height: 30,
            ),
            MyTextField(
                controller: email, labelText: 'Email', hintText: 'Enter Email'),
            MyTextField(
                controller: password,
                labelText: 'Password',
                hintText: 'Enter Password'),
            MyButton(onTap: () {}, text: 'Login')
          ],
        )));
  }
}
