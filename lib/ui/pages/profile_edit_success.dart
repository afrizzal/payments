import "package:flutter/material.dart";
import "package:flutter_payments/shared/theme.dart";
import "package:flutter_payments/ui/widgets/buttons.dart";

class ProfileEditSuccessPage extends StatelessWidget {
  const ProfileEditSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update!',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Your data is safe in\nour system.',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              width: 183,
              title: 'Done', 
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false);
              },
              ),
          ],
        ),
      ),
    );
  }
}