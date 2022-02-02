import 'package:flutter/material.dart';
import 'package:restaurant_app/constrants/my_colors.dart';
import 'package:restaurant_app/data/models/tips_model.dart';
import 'package:restaurant_app/presentation/widgets/primary_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class TipsScreen extends StatelessWidget {
  TipsScreen({Key? key}) : super(key: key);

  List<TipsModel> tips = [
    TipsModel(
      title: 'أفضل المؤكولات',
      desc: 'تجد لدينا أفضل المأكولات لدينا',
      image: 'assets/images/tip1.png',
    ),
    TipsModel(
      title: 'خدمات سريعة',
      desc: 'لدينا موظفين ينتظرون بك ، فقط أطلب ما تريد',
      image: 'assets/images/tip2.png',
    ),
    TipsModel(
      title: 'توصيل سريع',
      desc: 'خدمات التوصيل سريعة لدينا ، أطلب فقط',
      image: 'assets/images/tip3.png',
    ),
  ];

  Widget _buildTipsItem(TipsModel tip){
    return Column(
      children: [
        Image(
            image: AssetImage(tip.image),
            height: 250,
            width: 250,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 50),
            child: Column(
              children: [
                Text(
                  tip.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: MyColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  tip.desc,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.withOpacity(1.0),
                  ),
                  textAlign: TextAlign.center,
                ),
                
              ],
            ),
          ),
      ],
    );
  }

  var boardController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'تسجيل الدخول',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MyColors.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: boardController,
                        physics: const BouncingScrollPhysics(),
                        itemCount: tips.length,
                        itemBuilder: (context, index) => _buildTipsItem(tips[index]),
                      ),
                    ),
                   SmoothPageIndicator(
                   controller: boardController,
                   count: tips.length,
                   effect: const WormEffect(
                   dotHeight: 10,
                   dotWidth: 10,
                   dotColor: Colors.grey,
                   activeDotColor: MyColors.primaryColor,
                   spacing: 5.0,
                  ),
                ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    primaryElevatedButton(
                      title: 'إنشاء حساب',
                      backgroundColor: MyColors.primaryColor,
                      textColor: Colors.white,
                    ),
                    const SizedBox(height: 15),
                    primaryElevatedButton(
                      title: 'الربط ب الفيس بوك',
                      backgroundColor: Colors.grey[300],
                      textColor: Colors.black,
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
