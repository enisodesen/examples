// ignore_for_file: unused_field

import 'package:examples/components/registration_page.dart';
import 'package:flutter/material.dart';

import '../components/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final userNameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Center(
        child: SizedBox(
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 36, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  textFieldController: nameController,
                  hintText: 'Enter Your Name',
                  prefixIcon: const Icon(Icons.abc)),
              CustomTextField(
                textFieldController: userNameController,
                hintText: 'Enter Your Username',
                prefixIcon: const Icon(Icons.abc),
              ),
              CustomTextField(
                  textFieldController: emailController,
                  hintText: 'Enter Your Email Adress',
                  prefixIcon: const Icon(Icons.email),
                  keyboardType: TextInputType.emailAddress),
              CustomTextField(
                  textFieldController: passwordController,
                  hintText: 'Create a password',
                  prefixIcon: const Icon(Icons.password),
                  obscureText: true),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationPage()),
                    );
                  },
                  child: const Text('CREATE')),
              ElevatedButton(
                  onPressed: () {
                    nameController.clear();
                    userNameController.clear();
                    emailController.clear();
                    passwordController.clear();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[300]),
                  child: const Text(
                    'CLEAR',
                    style: TextStyle(fontSize: 12),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
