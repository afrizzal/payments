import 'package:flutter/material.dart';
import 'package:flutter_payments/shared/theme.dart';
import 'package:flutter_payments/ui/widgets/buttons.dart';
import 'package:flutter_payments/ui/widgets/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img_logo_light.png'
                ),
              ),
            ),
        ),
              Text(
              'Join Us to Unlock\nYour Growth',
              style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration
            (borderRadius: BorderRadius.circular(20),
            color: whiteColor,
            ),
            child: Column(
              children: [
                //NAME INPUT
                const CustomFormField(title: 
                'Full Name',
                ),
                const SizedBox(
                  height: 16,
                ),

                //EMAIL INPUT
                const CustomFormField(title: 
                'Email Address',
                ),
                const SizedBox(
                  height: 16,
                ),
                
                //PWD INPUT

                const CustomFormField(title: 
                'Password',
                obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue', 
                  onPressed: (){
                    Navigator.pushNamed(context, '/sign-up-set-profile');
                  },
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextButton(
            title: 'Sign In',
            onPressed: (){
              Navigator.pushNamed(context, '/sign-in');
            },
          ),
      ],
    ),
    );
  }
}