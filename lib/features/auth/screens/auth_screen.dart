import 'package:amazon_node_clone/common/widgets/submit_button.dart';
import 'package:amazon_node_clone/common/widgets/text_input.dart';
import 'package:amazon_node_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:amazon_node_clone/constants/global_variables.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);
  static const String routeName = '/auth-screen';
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ListTile(
                      title:const Text(
                        'Create Account',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      leading: Radio(
                          activeColor: GlobalVariables.secondaryColor,
                          value: Auth.signup,
                          groupValue: _auth,
                          onChanged: (Auth? val) {
                            setState(() {
                              _auth = val!;
                            });
                          }),
                    ),
                    ListTile(
                      title:const Text(
                        'Sign-In',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      leading: Radio(
                          activeColor: GlobalVariables.secondaryColor,
                          value: Auth.signin,
                          groupValue: _auth,
                          onChanged: (Auth? val) {
                            setState(() {
                              _auth = val!;
                            });
                          }),
                    ),

                    if(_auth == Auth.signup)
                      Form(
                        key: _signUpFormKey,
                        child: Column(
                          children: [
                              const TextInput(hintName: 'Name',),
                              const SizedBox(height:10 ,),
                              const TextInput(hintName: 'Email',),
                              const SizedBox(height:10 ,),
                              const TextInput(hintName: 'Password',),
                              const SizedBox(height:10 ,),
                              SubmitButton(buttonName: 'Sign In', onTap: () {  },),
                          ],
                        )
                        ),

                    if(_auth == Auth.signin)
                      Form(
                        key: _signUpFormKey,
                        child: Column(
                          children: [
                              const TextInput(hintName: 'Email',),
                              const SizedBox(height:10 ,),
                              const TextInput(hintName: 'Password',),
                              const SizedBox(height:10 ,),
                              SubmitButton(buttonName: 'Register', onTap: () {  },),
                          ],
                        ),
                      ),


                    const SizedBox(
                      height: 20.0,
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




