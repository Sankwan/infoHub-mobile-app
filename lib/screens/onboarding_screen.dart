import 'package:flutter/material.dart';
import 'package:info_hub_project/screens/login_page.dart';
import 'package:info_hub_project/utils/custom_navigations.dart';
// import 'package:green_ghana_scanner/main.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

//Introduction screen here
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      title: "Welcome to infoHub",
      bodyWidget: const Text(
        'Want a place to get current info on campus? \n\nCheck us Out',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
      image: Center(child: Image.asset('assets/images/I1.png')),
    ),
    PageViewModel(
      title: "Real-time Info",
      bodyWidget: const Text(
        'Get instant upadates on all campus events, from academic seminars to student socials\n\n Stay Connected',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
      image: Center(child: Image.asset('assets/images/I2.png')),
    ),
    PageViewModel(
      title: "Connect",
      bodyWidget: const Text(
        'Find what you like and explore Campus\n\n Stay Informed',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
      image: Center(child: Image.asset('assets/images/I3.png')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 10,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: IntroductionScreen(
        pages: listPagesViewModel,
        showSkipButton: true,
        showNextButton: true,
        showDoneButton: true,
        skip: const Text("Skip"),
        done: const Text("Done"),
        next: const Icon(Icons.arrow_forward_ios_rounded),
        onDone: () async {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setBool('intro', false);
          //navigate to login page
          nextNavRemoveHistory(context, LoginPage());
        },
      ),
    );
  }
}
