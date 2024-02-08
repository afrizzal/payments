import "package:flutter/material.dart";
import "package:flutter_payments/shared/theme.dart";
import "package:flutter_payments/ui/widgets/buttons.dart";

class TransferSuccessPage extends StatelessWidget {
  const TransferSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Transfer Success!',
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
              'Use the money wisely and\ngrow your finance.',
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
              title: 'Back to Home', 
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