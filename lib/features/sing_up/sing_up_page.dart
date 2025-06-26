import 'dart:math';

import 'package:finance_app/common/utils/validator.dart';
import 'package:finance_app/common/widgets/custom_text_form_field.dart';
import 'package:finance_app/common/widgets/password_form_field.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:finance_app/common/widgets/custom_text_button.dart';
import 'package:finance_app/common/widgets/primary_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 233, 255, 248),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mais valor, ',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.greenlightTwo,
                  ),
                ),
                Text(
                  'em cada escolha.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.greenlightOne,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  const CustomTextFormField(
                    labelText: 'nome',
                    textInputAction: TextInputAction.next,
                    hintText: 'Seu nome',
                    validator: Validator.validateName,
                  ),
                  const CustomTextFormField(
                    labelText: 'Email',
                    hintText: 'email@email.com',
                    textInputAction: TextInputAction.next,
                    validator: Validator.validateEmail,
                  ),
                  PasswordFormField(
                    controller: _passwordController,
                    helperText:
                        'Sua senha deve conter mínimo de 8 caractéres, 1 letra maiúscula e 1 número.',
                    labelText: 'Escolha sua senha',
                    validator: Validator.validatePassword,
                    hintText: '********',
                  ),
                  PasswordFormField(
                    labelText: 'Confirme sua senha',
                    hintText: '********',
                    validator: (value) => Validator.validateConfirmPassword(
                        value, _passwordController.text),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(
                onPressed: () {
                  final valid = _formKey.currentState != null &&
                      _formKey.currentState!.validate();
                  if (valid) {
                  } else {
                    log(504);
                  }
                },
                text: 'Cadastrar-se'),
            CustomTextButton(
              onpressed: () {},
              children: [
                Text(
                  'Já possui uma conta?  ',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.darkGrey,
                  ),
                ),
                Text(
                  'Faça login.',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.greenlightTwo,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
