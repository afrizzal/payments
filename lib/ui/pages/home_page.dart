import "package:flutter/material.dart";
import "package:flutter_payments/shared/theme.dart";
import "package:flutter_payments/ui/widgets/home_latest_transaction_item.dart";
import "package:flutter_payments/ui/widgets/home_service_item.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: lightBackgroundColor,
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
          buildProfile(),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildLatestTransaction(),
          // const SizedBox(
          //   height: 40,
          // ),
        ],
      ),
    );
  }
  Widget buildProfile() {
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
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image:AssetImage(
                  'assets/img_profile.png',
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
                  'of Rp. 20,000',
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
  Widget buildServices(){
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
                  onTap: (){},
                  ),
                  HomeServiceItem(
                  iconUrl: 'assets/ic_send.png', 
                  title: 'Send',
                  onTap: (){},
                  ),
                  HomeServiceItem(
                  iconUrl: 'assets/ic_wd.png', 
                  title: 'Withdraw',
                  onTap: (){},
                  ),
                  HomeServiceItem(
                  iconUrl: 'assets/ic_more.png', 
                  title: 'More',
                  onTap: (){},
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
              child: Column(
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
}
