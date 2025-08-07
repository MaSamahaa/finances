import 'dart:math';

import 'package:finance_app/common/utils/validator.dart';
import 'package:finance_app/common/widgets/custom_bottom_sheet.dart';
import 'package:finance_app/common/widgets/custom_text_form_field.dart';
import 'package:finance_app/common/widgets/password_form_field.dart';
import 'package:finance_app/features/sing_up/sing_up_controller.dart';
import 'package:finance_app/features/sing_up/sing_up_state.dart';
import 'package:finance_app/services/mock_auth_service.dart';
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
    final _emailController = TextEditingController();
      final _nameController = TextEditingController();
  final _controller = SingUpController(MockAuthService());

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(
      () {
        if (_controller.state is SingUpLoadingState) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: AppColors.white,
              ),
            ),
          );
        }
        if (_controller.state is SingUpSucessState) {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Scaffold(
                body: Center(
                  child: Text('Nova Tela'),
                ),
              ),
            ),
          );
        }
        if (_controller.state is SingUpErrorState) {
          final error = _controller.state as SingUpErrorState;
          Navigator.pop(context);
          customModalBottomSheet(context, content: error.message,buttonText:'Tente Novamente');
        }
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
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
                   CustomTextFormField(
                    controller: _nameController ,
                    labelText: 'nome',
                    textInputAction: TextInputAction.next,
                    hintText: 'Seu nome',
                    validator: Validator.validateName,
                  ),
                   CustomTextFormField(
                    controller: _emailController,
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
                    _controller.singUp(
                      name: _nameController.text,
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
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
