import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:groceries_app_ui/features/authentication/presentation/screens/number_screen.dart';

import '../../../core/utils/validators.dart';

import '../widgets/auth_button.dart';
import '../widgets/auth_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _register() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const NumberScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 45.h),

                Center(
                  child: Image.asset(
                    'assets/images/carrot.png',
                    width: 55.w,
                  ),
                ),

                SizedBox(height: 65.h),

                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 8.h),

                Text(
                  'Enter your credentials to continue',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13.sp,
                  ),
                ),

                SizedBox(height: 30.h),

                AuthTextField(
                  label: 'Username',
                  controller: usernameController,
                ),

                SizedBox(height: 22.h),

                AuthTextField(
                  label: 'Email',
                  controller: emailController,
                  validator: Validators.email,
                ),

                SizedBox(height: 22.h),

                AuthTextField(
                  label: 'Password',
                  controller: passwordController,
                  obscureText: !isPasswordVisible,
                  validator: Validators.password,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),

                SizedBox(height: 20.h),

                Text(
                  'By continuing you agree to our Terms of Service\n'
                  'and Privacy Policy.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11.sp,
                  ),
                ),

                SizedBox(height: 20.h),

                AuthButton(
                  text: 'Sign Up',
                  onPressed: _register,
                ),

                SizedBox(height: 14.h),

                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                          fontSize: 12.sp,
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xff52b878),
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}