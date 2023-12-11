
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:cuffeeappuitow/sheard/componants/conestant.dart';
import 'package:cuffeeappuitow/sheard/network/local/bloc_observer.dart';
import 'package:cuffeeappuitow/sheard/network/local/cach_helper.dart';
import 'package:cuffeeappuitow/sheard/network/remode/dio_helper.dart';
import 'package:cuffeeappuitow/sheard/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/CoffeeApp/Onpording/onpording.dart';


void  main() async {
  // ensure everything in this methode is done and then run app
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  // عشان بس يغير اشي بال state يبين وين هو بالزبط
  dioHelper.init();
  // init of diohelper
  await   cachHelper.initail();
  var  isDark = cachHelper.getData(key: 'isdark ');
  // عشان اعمل save اذا كان dark
  var isBordaing =cachHelper.getData(key: 'onsubmit');
  token =cachHelper.getData(key: 'token');
  print(token);


  runApp(MyApp(isDark));

}
class MyApp extends StatelessWidget
{
  final bool? isDark ;

  MyApp(this.isDark);
  @override
  Widget build(BuildContext context)
  {


    return MaterialApp(

      debugShowCheckedModeBanner: false,//عشان العلامه الي  عالطرف تروح
      theme: lightThem,
      darkTheme: darkThem,
        // cubitNews.get(context).mood ? ThemeMode.dark :
      themeMode: ThemeMode.light,
      //home:widget ,
      home:onpordaringCoffee(),

      // AnimatedSplashScreen(splash:Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/763/763812.png'),), nextScreen: Body(),
      //   splashTransition:SplashTransition.scaleTransition ,
      //   backgroundColor: Colors.grey,
      //   duration: 4000,
      //
      //
      // ),



    );
  }
}
//systemOverlayStyle عشان اتحكم بال  icons تبعت الجهاز نفسه
//1: statusBarColor عشان لون ال الشريط كامل
//2:  statusBarBrightness عشان اتحكم بلون ال icons
// اذا راح استخدم ال cubit بال app كامل بعمل بال main MultiBlocProvider
// وظيفة ال key in cach helper
// عباره عن  refrence لاشي معين عشان اميزه عن الكل
// بس اعمل getdata وابعتله ال key هو لحاله حيعرف انه باشر على هاد الاشي





