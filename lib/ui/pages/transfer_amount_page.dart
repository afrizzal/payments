import 'package:flutter/material.dart';
import 'package:flutter_payments/shared/theme.dart';
import 'package:flutter_payments/ui/widgets/buttons.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class TransferAmountPage extends StatefulWidget {
  const TransferAmountPage({super.key});

  @override
  State<TransferAmountPage> createState() => _TransferAmountPageState();
}

class _TransferAmountPageState extends State<TransferAmountPage> {
  final TextEditingController amountController = 
    TextEditingController(text: '0');

  @override
  void initState(){
    super.initState();

    amountController.addListener(() {
      final text = amountController.text;
      
      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(
          int.parse(
            text == '' ? '0' : text.replaceAll('.', ''),
          ),
        ),
      );
    });
  }

  addAmount(String number) {
    if(amountController.text == '0'){
      amountController.text = '';
    }
      setState(() {
        amountController.text = amountController.text + number;
      });
    }

  deleteAmount(){
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text =
          amountController.text.substring(0, amountController.text.length-1);
          if(amountController.text == '') {
            amountController.text = '0';
          }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
         padding: const EdgeInsets.symmetric(
          horizontal: 55,
        ),
        children: [
          const SizedBox(
            height: 36,
          ),
          Center(
            child: Text(
              'Total Amount',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 67,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                controller: amountController,
                cursorColor: greyColor,
                enabled: false,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                decoration: InputDecoration(
                  prefixIcon: Text(
                    'Rp.',
                  style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                  ),
                ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
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
                  addAmount('1');
                  },
                ),
              CustomInputButton(
                title: '2',
                onTap: (){
                  addAmount('2');
                  },
                ),
              CustomInputButton(
                title: '3',
                onTap: (){
                  addAmount('3');
                  },
                ),
              CustomInputButton(
                title: '4',
                onTap: (){
                  addAmount('4');
                  },
                ),
              CustomInputButton(
                title: '5',
                onTap: (){
                  addAmount('5');
                  },
                ),
              CustomInputButton(
                title: '6',
                onTap: (){
                  addAmount('6');
                  },
                ),
              CustomInputButton(
                title: '7',
                onTap: (){
                  addAmount('7');
                  },
                ),
              CustomInputButton(
                title: '8',
                onTap: (){
                  addAmount('8');
                  },
                ),
              CustomInputButton(
                title: '9',
                onTap: (){
                  addAmount('9');
                  },
                ),
              const SizedBox(
                width: 60,
                height: 60,
              ),
              CustomInputButton(
                title: '0',
                onTap: (){
                  addAmount('0');
                  },
                ),
            GestureDetector(
              onTap: (){
                deleteAmount();
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
        const SizedBox(
          height: 50,
        ),
        CustomFilledButton(
          title: 'Continue', 
          onPressed: () async{
            if(await Navigator.pushNamed(context, '/pin') == true){
              Navigator.pushNamedAndRemoveUntil(context, '/transfer-success', (route) => false);
            }
          },
        ),
        const SizedBox(
          height: 25,
        ),
        CustomTextButton(
          title: 'Term & Conditions', 
          onPressed: (){}
          ),
          const SizedBox(
            height: 40,
          ),
      ],
            ),
  );
}
}