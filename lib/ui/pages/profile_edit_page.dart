import 'package:flutter/material.dart';
import 'package:flutter_payments/shared/theme.dart';
import 'package:flutter_payments/ui/pages/profile_edit_success.dart';
import 'package:flutter_payments/ui/widgets/buttons.dart';
import 'package:flutter_payments/ui/widgets/forms.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
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
                //UNAME INPUT
                const CustomFormField(title: 
                'Username',
                ),
                const SizedBox(
                  height: 16,
                ),

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
                  title: 'Update', 
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(
                      context, 
                      MaterialPageRoute(builder: (context)=> ProfileEditSuccessPage()),
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}