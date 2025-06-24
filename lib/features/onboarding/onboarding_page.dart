import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:finance_app/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/man.png'),
          const SizedBox(
            height: 32.0,
          ),
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 24.0,
            ),
            child: PrimaryButton(
              text: 'Começar agora',
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Já possui uma conta? Faça login',
            style: AppTextStyles.smallText.copyWith(color: AppColors.grey),
          ),
        ],
      ),
    );
  }
}
