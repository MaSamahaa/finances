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
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
              top: 16.0,
              bottom: 8.0,
            ),
            child: PrimaryButton(
              text: 'Começar agora',
              onPressed: () {},
            ),
          ),
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
    );
  }
}
