import 'package:flutter/material.dart';
import 'package:restaurant_app/constrants/my_colors.dart';
import 'package:restaurant_app/constrants/route_string.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                color: Colors.white,
                child: const Image(
                  image: AssetImage('assets/images/get_started_picture.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                decoration: BoxDecoration(
                  color: MyColors.primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(height: 25),
                    const Text(
                      'أشهى المأكولات',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    
                    const Text(
                      'أفضل المأكولات تجدها في مطعمنا والعديد من المأكولات لدينا',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.right,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 25),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, tipsScreen);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'إبدا من هنا',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
