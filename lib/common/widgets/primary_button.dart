import 'package:flutter/material.dart';
import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 45), // ajuste aqui conforme quiser
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: onPressed != null
                ? AppColors.greenGradient
                : AppColors.greyGradient,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: onPressed,
            child: Center(
              child: Text(
                text,
                style: AppTextStyles.mediumText18.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
