import 'package:flutter/material.dart';
import 'package:flutter_payments/shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  
  final String title;
  final double width;
  final double height;
  final VoidCallback onPressed;

  const CustomFilledButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    required this.onPressed,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextButton(
                          onPressed: onPressed,
                          style: TextButton.styleFrom(
                            backgroundColor: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(56)
                            ),
                          ),
                          child: Text(
                            title,
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                          ),
                        ),
                      ),
                    );
}
}