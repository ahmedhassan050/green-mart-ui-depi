import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app_ui/features/authentication/presentation/screens/sign_screen.dart';
import 'package:groceries_app_ui/features/authentication/presentation/widgets/auth_background.dart';
import 'package:groceries_app_ui/features/authentication/presentation/widgets/auth_button.dart';
import 'package:groceries_app_ui/features/authentication/presentation/widgets/auth_text_field.dart';
import '../../../core/utils/validators.dart';
import '../../../home/presentation/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            padding:  EdgeInsets.symmetric(horizontal: 30.w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: 45.h),

                  Center(
                    child: Image.asset(
                      'assets/images/carrot.png',
                      width: 55,
                    ),
                  ),

                   SizedBox(height: 65.h),

                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                   SizedBox(height: 8.h),

                  Text(
                    'Enter your emails and password',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.sp,
                    ),
                  ),

                  SizedBox(height: 30.h),

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

                  SizedBox(height: 10.h),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child:  Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ),

                 SizedBox(height: 8.h),

                  AuthButton(
                    text: 'Log In',
                    onPressed: _login,
                  ),

                  SizedBox(height: 14.h),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
                          "Don't have an account? ",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RegisterScreen(),
                              ),
                            );
                          },
                          child:  Text(
                            'Signup',
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
      ),
    );
  }
}