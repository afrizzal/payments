import 'package:flutter/material.dart';
import 'package:flutter_payments/shared/theme.dart';
import 'package:flutter_payments/ui/widgets/buttons.dart';
import 'package:flutter_payments/ui/widgets/forms.dart';
import 'package:flutter_payments/ui/widgets/package_item.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paket Data',
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
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
          title: '+628',
          isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Select Package',
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 2,
            runSpacing: 2,
            children: [
              PackageItem(
                amount: 10, 
              price: 100000,
              ),
              PackageItem(
                amount: 20, 
              price: 200000,
              isSelected: true,
              ),
              PackageItem(
                amount: 30, 
              price: 300000,
              ),
              PackageItem(
                amount: 50, 
              price: 400000,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(title: 'Continue', onPressed: (){
            Navigator.pushNamed(context, '/home');
          },
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}