import "package:flutter/material.dart";
import "package:flutter_payments/shared/theme.dart";
import "package:flutter_payments/ui/widgets/home_latest_transaction_item.dart";
import "package:flutter_payments/ui/widgets/home_service_item.dart";
import "package:flutter_payments/ui/widgets/home_tips_item.dart";
import "package:flutter_payments/ui/widgets/home_user_item.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                width: 20,
                color: blueColor,
                ),
                label: 'Overview',
              ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
                ),
                label: 'Statistic',
              ),
              BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_reward.png',
                width: 20,
                ),
                label: 'Reward',
              ),
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: purpleColor,
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ), 
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(context),
          buildLatestTransaction(),
          buildSendAgain(),
          buildFrindlyTips(),
          // const SizedBox(
          //   height: 40,
          // ),
        ],
      ),
    );
  }
    Widget buildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'User',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              width: 60,
              height: 60,
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
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Icon(
                  Icons.check_circle,
                  color: greenColor,
                              ),
                ),
            ),
                    ),
          ),
      ],      
    ),
  );
}
    Widget buildWalletCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/img_bg_card.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reza Choiruddin',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            '**** **** 1234',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 6,
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            'Balance',
            style: whiteTextStyle,
            ),
            Text(
              'IDR 666',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
              
              )
        ],
      ),
    );
  }
    Widget buildLevel () {
      return Container(
        margin: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Level 1',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                const Spacer(),
                Text(
                  '55%',
                  style: greenTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  ' of Rp. 20,000',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: LinearProgressIndicator(
                value: 0.55,
                valueColor: AlwaysStoppedAnimation(greenColor),
                minHeight: 5,
                backgroundColor: lightBackgroundColor,
              ),
            ),
          ],
        ),
      );
    }
    Widget buildServices(BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do Something',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeServiceItem(
                  iconUrl: 'assets/ic_topup.png', 
                  title: 'Top Up',
                  onTap: (){
                    Navigator.pushNamed(context, '/topup');
                  },
                  ),
                  HomeServiceItem(
                  iconUrl: 'assets/ic_send.png', 
                  title: 'Send',
                  onTap: (){
                    Navigator.pushNamed(context, '/transfer');
                  },
                  ),
                  HomeServiceItem(
                  iconUrl: 'assets/ic_wd.png', 
                  title: 'Withdraw',
                  onTap: (){},
                  ),
                  HomeServiceItem(
                  iconUrl: 'assets/ic_more.png', 
                  title: 'More',
                  onTap: (){
                    showDialog(context: context, builder: (context) => const MoreDialog(),
                    );
                  },
                  ),
              ],
            )
          ],
        ),
      );
    }
    Widget buildLatestTransaction() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest Transaction',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(22),
              margin: const EdgeInsets.only(
                top: 14,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: const Column(
                children: [
                  HomeLatestTransactionItem(iconUrl: 'assets/ic_transaction_cat1.png',
                   title: 'Top Up',
                   time: 'yesterday',
                   value: '+ 666.000',
                   ),
                  HomeLatestTransactionItem(iconUrl: 'assets/ic_transaction_cat2.png',
                   title: 'Cashback', 
                   time: 'Aug 17', 
                   value: '+ 1.500',
                   ),
                  HomeLatestTransactionItem(iconUrl: 'assets/ic_transaction_cat3.png',
                   title: 'Withdraw', 
                   time: 'May 21', 
                   value: '- 600.000',
                   ),
                  HomeLatestTransactionItem(iconUrl: 'assets/ic_transaction_cat4.png',
                   title: 'Transfer', 
                   time: 'Apr 1', 
                   value: '+ 6.000',
                   ),
                  HomeLatestTransactionItem(iconUrl: 'assets/ic_transaction_cat5.png',
                   title: 'Voucher', 
                   time: 'Feb 14', 
                   value: '+ 50.000',
                   ),
                ],
              ),
            )
          ],
        ),
      );
    }
    Widget buildSendAgain() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Send Again',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            // ignore: prefer_const_constructors
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: const Row(
                children: [
                  HomeUserItem(
                    imageUrl: 'assets/img_friend1.png', 
                    username: 'citra',
                    ),
                  HomeUserItem(
                    imageUrl: 'assets/img_friend2.png', 
                    username: 'shita',
                    ),
                  HomeUserItem(
                    imageUrl: 'assets/img_friend3.png', 
                    username: 'Didit',
                    ),
                  HomeUserItem(
                    imageUrl: 'assets/img_friend4.png', 
                    username: 'Galih',
                    ),
                ],
              ),
            )
          ],
        ),
      );
    }
    Widget buildFrindlyTips() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Friendly Tips',
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
              runSpacing: 5,
              children: [
            HomeTipsItem(
              imageUrl: 'assets/img_tips1.png', 
              title: 'Neque porro quisquam est qui', 
              url: 'https://avenirstudio.net/'),
            HomeTipsItem(
              imageUrl: 'assets/img_tips2.png', 
              title: 'dolorem ipsum quia dolor sit', 
              url: 'https://avenirstudio.net/'),
            HomeTipsItem(
              imageUrl: 'assets/img_tips3.png', 
              title: 'Lorem ipsum dolor sit amet', 
              url: 'https://avenirstudio.net/'),
            HomeTipsItem(
              imageUrl: 'assets/img_tips4.png', 
              title: 'Sed ut perspiciatis unde ', 
              url: 'https://avenirstudio.net/'),
              ],
            ),
          ],
        ),
      );
    }
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        height: 325,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select payments',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Wrap(
              spacing: 15,
              runSpacing: 15,
              children: [
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_data.png', 
                  title: 'Data',
                  onTap: (){},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_water.png', 
                  title: 'Bills',
                  onTap: (){},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_stream.png', 
                  title: 'Vidio',
                  onTap: (){},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_movie.png', 
                  title: 'Movie',
                  onTap: (){},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_food.png', 
                  title: 'Coffee',
                  onTap: (){},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_travel.png', 
                  title: 'Travel',
                  onTap: (){},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
