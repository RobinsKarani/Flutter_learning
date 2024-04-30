// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modern_authentication/components/my_button.dart';
import 'package:modern_authentication/components/my_textfield.dart';
import 'package:modern_authentication/components/square_tile.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

final  usernameController = TextEditingController();
final  passwordController = TextEditingController();

void signInUser () {}

  @override
  Widget build(BuildContext context) {
     
    return  Scaffold(
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(15.0),
          child: Column(children: [
            const SizedBox(
              height: 90,
            ),
            //Logo
           const  Icon(
              Icons.lock,
              size: 50,
            ),
            const SizedBox(
              height: 20,
            ),
            //welcome back,you've been missed!
            const  Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            //login button
            
            //username textfield
     MyTextfield(
      controller: usernameController , 
     hintText: 'enter your username', 
     obscureText: false,
      labelText: 'Username'),
           const SizedBox(
              height: 20,
            ),
           //username textfield
             MyTextfield(
      controller: passwordController , 
     hintText: 'enter your password', 
     obscureText: true,
      labelText: 'password'),
      const SizedBox(
              height: 15,
            ),
            //forgot password?
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 106, 4, 14)
                    ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //login button
           MyButton(text:'Login', onPressed: signInUser  ),
            const SizedBox(
              height: 20,
            ),
            //dont have an account?
                
            //or continue with
        const  Row(
            children: [
              Expanded(
                child: Divider(),
              ),
              Text('Or continue with',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey
                ),
              ),
               Expanded(
                child: Divider(),
              ),
              
            ],
        ),
            const SizedBox(
              height: 30,
            ),
          
          
          
            //google sign in button + apple sign in button
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
children: [
  SquareTile(imagePath: 'lib/assets/icons/images.png'),
SizedBox(width: 30,),
SquareTile(imagePath: 'lib/assets/icons/apple.png')
],
          ),
          const SizedBox(
            height: 30,
          ),
          //dont have an account?
         const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text('Dont have an account?',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                ),
              ),
              const SizedBox(width: 5),
              Text('Register now',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 81, 106, 4)
                ),
              ),
            ],
          )
          ]),
        ),
      ),
    );
  }
}
