import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/constant/app_assets.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/password_field.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
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
                    Gap(30),
                    SvgPicture.asset(AppAssets.logo),
                    Gap(60),
                    CustomTextFormField(
                      label: 'Name',
                      textInputType: TextInputType.emailAddress,
                    ),
                    Gap(16),
                    CustomTextFormField(
                      label: 'Email',
                      textInputType: TextInputType.emailAddress,
                    ),
                    Gap(16),
                    PasswordField(label: 'Password'),
                    Gap(16),
                    PasswordField(label: 'Confirm Password'),
                    Gap(30),
                    CustomButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      }, label: 'Signup',
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
