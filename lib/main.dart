import 'package:flutter/material.dart';
import 'package:restaurant_app/app_route.dart';
import 'package:restaurant_app/constrants/route_string.dart';


// late String initialRoute;

void main() {
  runApp(MyApp(appRoute: AppRoute(),));
}


class MyApp extends StatelessWidget {
  final AppRoute appRoute;
  const MyApp({ Key? key, required this.appRoute }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRoute.onGenerateRoute,
        initialRoute: splashScreen,
      ),
    );
  }
}