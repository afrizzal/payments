import 'package:flutter/material.dart';
import 'package:flutter_payments/shared/theme.dart';
import 'package:flutter_payments/ui/pages/profile_edit_success.dart';
import 'package:flutter_payments/ui/widgets/buttons.dart';
import 'package:flutter_payments/ui/widgets/forms.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit PIN',
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
                //OLD PIN
                const CustomFormField(title: 
                'Old PIN',
                obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                //PWD INPUT
                const CustomFormField(title: 
                'New PIN',
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