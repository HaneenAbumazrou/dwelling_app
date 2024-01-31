
import 'package:dwelling_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Sign_up/Create.dart';
import 'modal/button.dart';

class Login extends StatefulWidget {
  Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey= GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _email ="";
  String _password ="";


  void _handleLogin() async {
    try {
      if (_email.isEmpty || _password.isEmpty) {
        print("Email and password are required");
        return;
      }

      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _email,
        password: _password,
      );

      // Print reCAPTCHA token (for debugging)
      print("reCAPTCHA token: ${userCredential.credential?.token}");

      if (userCredential.user != null) {
        // Successful login
        await FirebaseAuth.instance.setLanguageCode('en');

        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomeScreen()),
              (route) => false,
        );
      } else {
        // Handle null user (optional)
        print("User is null after login");
      }
    } on FirebaseAuthException catch (e) {
      // Handle authentication errors
      print("Error code: ${e.code}, Error message: ${e.message}");

      // Check for reCAPTCHA error
      if (e.code == 'requires-recent-login') {
        // Handle reCAPTCHA error (e.g., show a message to the user)
        print("This operation is sensitive and requires recent authentication. Log in again before retrying.");
      } else {
        // Handle other authentication errors
        // You can show an error message to the user
        // For example: ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Authentication failed: ${e.message}")));
      }
    } catch (e) {
      print("Unexpected error: $e");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFFBFE),
        leading: IconButton(
          iconSize: 30,
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:Form(
             key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60.0),
              const Center(
                child: Text(
                  'Login Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 5.0),
              const Center(
                child: Text(
                  'Hello, welcome back to our account  ',
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 40.0),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(),
                      hintText: 'Enter your email',
                      suffixIcon: Icon(Icons.mail_outline, color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    validator: (value){
                      if (value== null || value.isEmpty) {
                        return "Please Enter Your Email";
                      }
                      return null;
                    },
                    onChanged: (value){
                      setState(() {
                        _email= value;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(),
                      hintText: 'Enter your password',
                      suffixIcon: Icon(Icons.lock, color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    validator: (value){
                      if (value== null || value.isEmpty) {
                        return "Please Enter Your Password";
                      }
                      return null;
                    },
                    onChanged: (value){
                      setState(() {
                        _password= value;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              Center(
                child: ElevatedButton(
                  style: buttonPrimary,
                  onPressed: (){
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                          (route) => false,
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 70.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not Registered yet?',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => Create()),
                            (route) => false,
                      );
                    },
                    child: const Text(' Create an Account',
                        style: TextStyle(
                            color: Color(0xffBD5484), fontSize: 14.0)),
                  ),
                ],
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
