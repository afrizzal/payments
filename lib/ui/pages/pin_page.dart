import 'package:flutter/material.dart';
import 'package:flutter_payments/shared/shared_methods.dart';
import 'package:flutter_payments/shared/theme.dart';
import 'package:flutter_payments/ui/widgets/buttons.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length <6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }

    if (pinController.text.length == 6) {
      if (pinController.text == '123123') {
        Navigator.pop(context, true);
        } else {
          showCustomSnackbar(
            context, 'Wrong PIN. Please enter the correct PIN');
        }
    }
  }

  deletePin(){
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
          pinController.text.substring(0, pinController.text.length-1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 55,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Secret PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: pinController,
                  obscureText: true,
                  cursorColor: greyColor,
                  obscuringCharacter: '*',
                  enabled: false,
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 15,
                  ),
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  CustomInputButton(
                    title: '1',
                    onTap: (){
                      addPin('1');
                      },
                    ),
                  CustomInputButton(
                    title: '2',
                    onTap: (){
                      addPin('2');
                      },
                    ),
                  CustomInputButton(
                    title: '3',
                    onTap: (){
                      addPin('3');
                      },
                    ),
                  CustomInputButton(
                    title: '4',
                    onTap: (){
                      addPin('4');
                      },
                    ),
                  CustomInputButton(
                    title: '5',
                    onTap: (){
                      addPin('5');
                      },
                    ),
                  CustomInputButton(
                    title: '6',
                    onTap: (){
                      addPin('6');
                      },
                    ),
                  CustomInputButton(
                    title: '7',
                    onTap: (){
                      addPin('7');
                      },
                    ),
                  CustomInputButton(
                    title: '8',
                    onTap: (){
                      addPin('8');
                      },
                    ),
                  CustomInputButton(
                    title: '9',
                    onTap: (){
                      addPin('9');
                      },
                    ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomInputButton(
                    title: '0',
                    onTap: (){
                      addPin('0');
                      },
                    ),
                GestureDetector(
                  onTap: (){
                    deletePin();
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: numberBackgroundColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: whiteColor,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
}