import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:finance_app/common/widgets/custom_text_button.dart';
import 'package:finance_app/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 32.0),
              Image.asset('assets/images/man.png'),
              const SizedBox(height: 32.0),
              Text(
                'Consumo consciente,',
                style: AppTextStyles.mediumText
                    .copyWith(color: AppColors.greenlightTwo),
              ),
              Text(
                'Economia garantida.',
                style: AppTextStyles.mediumText
                    .copyWith(color: AppColors.greenlightTwo),
              ),
              const SizedBox(height: 24.0),
              PrimaryButton(
                text: 'Começar agora',
                onPressed: () {
                  // ação
                },
              ),
              const SizedBox(height: 16.0),
              CustomTextButton(
                onpressed: () {
                  // ação
                },
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
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
