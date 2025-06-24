import 'package:flutter/material.dart';
import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:finance_app/common/widgets/custom_text_button.dart';
import 'package:finance_app/common/widgets/primary_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mais valor,',
              textAlign: TextAlign.center,
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.greenlightTwo,
              ),
            ),
            Text(
              'em cada escolha.',
              textAlign: TextAlign.center,
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.greenlightOne,
              ),
            ),
            const SizedBox(height: 16.0),
            Image.asset('assets/images/sing_up_img.png'),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Nome',
                      border: OutlineInputBorder(),

                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            PrimaryButton(onPressed: () {}, text: 'Cadastrar-se'),
            const SizedBox(height: 12),
            CustomTextButton(
              onpressed: () {},
              children: [
                Text(
                  'Já possui uma conta?  ',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.grey,
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
