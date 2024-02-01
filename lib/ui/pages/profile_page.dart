import 'package:flutter/material.dart';
import 'package:flutter_payments/shared/theme.dart';
import 'package:flutter_payments/ui/widgets/profile_menu_item.dart';
import 'package:flutter_payments/ui/widgets/buttons.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        backgroundColor: lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackColor,
          ),
          title: Text(
            'My Profile',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image:AssetImage(
                    'assets/img_profile_reza.jpg',
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Center(
                    child: Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 24,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Reza Choiruddin',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ProfileMenuItem(
              iconUrl: 'assets/ic_edit_profile.png', 
              title: 'Edit Profile',
              onTap: (){},
              ),
            ProfileMenuItem(
              iconUrl: 'assets/ic_pin.png', 
              title: 'My Pin',
              onTap: (){},
              ),
            ProfileMenuItem(
              iconUrl: 'assets/ic_wallet.png', 
              title: 'Wallet Setting',
              onTap: (){},
              ),
            ProfileMenuItem(
              iconUrl: 'assets/ic_reward.png', 
              title: 'My Rewards',
              onTap: (){},
              ),
            ProfileMenuItem(
              iconUrl: 'assets/ic_help.png', 
              title: 'Help Center',
              onTap: (){},
              ),
            ProfileMenuItem(
              iconUrl: 'assets/ic_logout.png', 
              title: 'Log Out',
              onTap: (){},
              ),
          ]
        ),
      ),
      const SizedBox(
        height: 87,
      ),
      CustomTextButton(
        title: 'Report',
        onPressed: (){},
      ),
      const SizedBox(
        height: 50,
      ),
    ],
  ),
);
  
  }
}