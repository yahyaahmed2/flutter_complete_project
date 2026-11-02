import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          'By continuing, you agree to our ',
          style: TextStyles.font13DarkBlueRegular,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) => const TermsAndConditionsScreen(),
              ),
            );
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'Terms & Conditions',
            style: TextStyles.font13BlueSemiBold,
          ),
        ),
      ],
    );
  }
}

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: ColorsManager.mainBlue),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Terms & Conditions',
          style: TextStyles.font24BlueBold.copyWith(fontSize: 20.sp),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last updated: June 2026',
                  style: TextStyles.font14GrayRegular.copyWith(fontSize: 12.sp),
                ),
                verticalSpace(16),
                Text(
                  '1. Introduction',
                  style: TextStyles.font24BlueBold.copyWith(fontSize: 16.sp),
                ),
                verticalSpace(8),
                Text(
                  'Welcome to our application. By accessing or using our app, you agree to be bound by these Terms and Conditions. If you disagree with any part of these terms, you may not access the service.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(20),
                Text(
                  '2. User Accounts',
                  style: TextStyles.font24BlueBold.copyWith(fontSize: 16.sp),
                ),
                verticalSpace(8),
                Text(
                  'When you create an account with us, you must provide information that is accurate, complete, and current at all times. Failure to do so constitutes a breach of the Terms, which may result in immediate termination of your account.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(20),
                Text(
                  '3. Intellectual Property',
                  style: TextStyles.font24BlueBold.copyWith(fontSize: 16.sp),
                ),
                verticalSpace(8),
                Text(
                  'The service and its original content, features, and functionality are and will remain the exclusive property of the company and its licensors. The service is protected by copyright, trademark, and other laws.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(20),
                Text(
                  '4. Changes to Terms',
                  style: TextStyles.font24BlueBold.copyWith(fontSize: 16.sp),
                ),
                verticalSpace(8),
                Text(
                  'We reserve the right, at our sole discretion, to modify or replace these Terms at any time. What constitutes a material change will be determined at our sole discretion.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
