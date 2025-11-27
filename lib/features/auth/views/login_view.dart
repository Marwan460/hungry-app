import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constant/app_assets.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/constant/app_text_style.dart';
import 'package:hungry/core/widgets/custom_button.dart';
import 'package:hungry/features/auth/widgets/custom_text_form_field.dart';
import 'package:hungry/features/auth/widgets/password_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SvgPicture.asset(AppAssets.logo),
                    Gap(10),
                    Text(
                      'Welcome Back, Discover The Fast Food',
                      style: AppTextStyle.regular16,
                    ),
                    Gap(60),
                    CustomTextFormField(
                      label: 'Email',
                      textInputType: TextInputType.emailAddress,
                    ),
                    Gap(16),
                    PasswordField(),
                    Gap(30),
                    CustomButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
