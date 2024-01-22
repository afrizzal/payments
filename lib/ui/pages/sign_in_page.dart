import 'package:flutter/material.dart';
import 'package:flutter_payments/shared/theme.dart';
import 'package:flutter_payments/ui/widgets/buttons.dart';
import 'package:flutter_payments/ui/widgets/forms.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img_logo_light.png'
                ),
              ),
            ),
        ),
              Text(
              'Sign In\nGrow Your Finance',
              style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
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
                //EMAIL INPUT
                const CustomFormField(title: 
                'Email Address',
                ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       'Email Address',
                //       style: blackTextStyle.copyWith(
                //         fontWeight: medium,
                //       ),
                //     ),
                //     const SizedBox(
                //       height: 8,
                //     ),
                //     TextFormField(
                //       decoration: InputDecoration(
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(14),
                //           ),
                //           contentPadding: const EdgeInsets.all(12),
                //       ),
                //     )
                //   ],
                // ),
                const SizedBox(
                  height: 16,
                ),
                
                //PWD INPUT

                const CustomFormField(title: 
                'Password',
                obscureText: true,
                ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       'Password',
                //       style: blackTextStyle.copyWith(
                //         fontWeight: medium,
                //       ),
                //     ),
                //     const SizedBox(
                //       height: 8,
                //     ),
                //     TextFormField(
                //       obscureText: true,
                //       decoration: InputDecoration(
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(14),
                //           ),
                //           contentPadding: const EdgeInsets.all(12),
                //       ),
                //     )
                //   ],
                // ),
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Sign In', 
                  onPressed: (){},
                  ),
                //Without Widget
                // SizedBox(
                //         width: double.infinity,
                //         height: 50,
                //         child: TextButton(
                //           onPressed: () {
                //             //BREAK
                //           },
                //           style: TextButton.styleFrom(
                //             backgroundColor: purpleColor,
                //             shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(56)
                //             ),
                //           ),
                //           child: Text(
                //             'SIgn In',
                //             style: whiteTextStyle.copyWith(
                //               fontSize: 16,
                //               fontWeight: semiBold,
                //           ),
                //         ),
                //       ),
                //     ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextButton(
            title: 'Create New Account',
            onPressed: (){
              Navigator.pushNamed(context, '/sign-up');
            },
          ),
                    //     SizedBox(
                    //     width: double.infinity,
                    //     height: 24,
                    //     child: TextButton(
                    //       onPressed: () {
                    //         // Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage(),),);
                    //       },
                    //       style: TextButton.styleFrom(
                    //         padding: EdgeInsets.zero,
                    //         ),
                    //       child: Text(
                    //         'Create New Account',
                    //         style: greyTextStyle.copyWith(
                    //           fontSize: 16,
                    //       ),
                    //     ),
                    //   ),
                    // ),
      ],
    ),
    );
  }
}