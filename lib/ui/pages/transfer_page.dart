import 'package:flutter/material.dart';
import 'package:flutter_payments/shared/theme.dart';
import 'package:flutter_payments/ui/widgets/buttons.dart';
import 'package:flutter_payments/ui/widgets/forms.dart';
import 'package:flutter_payments/ui/widgets/transfer_recent_user_item.dart';
import 'package:flutter_payments/ui/widgets/transfer_result_user_item.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer'
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
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: 'by username',
            isShowTitle: false,
            ),
            // buildRecentUsers(),
            buildResult(),
            const SizedBox(
              height: 200,
            ),
            CustomFilledButton(
              title: 'Continue', 
              onPressed: (){
                Navigator.pushNamed(context, '/transfer-amount');
              }
              ),
              const SizedBox(
                height: 20,
              ),
        ],
      ),
    );
  }

  Widget buildRecentUsers(){
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserItem(
          imageUrl: 'assets/img_friend1.png', 
          name: 'Evelyn Sanshine', 
          username: 'evelyn', 
          isVerified: true,
          ),
          const TransferRecentUserItem(
          imageUrl: 'assets/img_friend2.png', 
          name: 'Galih', 
          username: 'galih', 
          ),
          const TransferRecentUserItem(
          imageUrl: 'assets/img_friend3.png', 
          name: 'Maulidiyanto', 
          username: 'didit',
          ),
        ],
      ),
    );
  }

  Widget buildResult(){
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 2,
            runSpacing: 2,
            children: [
          TransferResultUserItem(
          imageUrl: 'assets/img_friend1.png', 
          name: 'Evelyn Sanshine', 
          username: 'evelyn', 
          isVerified: true,
          ),
          TransferResultUserItem(
          imageUrl: 'assets/img_friend2.png', 
          name: 'Citra', 
          username: 'citra',
          isSelected: true,
          ),
        ],
      ),
        ],
      ),
    );
  }
}