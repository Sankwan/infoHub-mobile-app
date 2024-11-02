import 'package:flutter/material.dart';
// import 'package:logger/logger.dart';

//custom navigations and others
//i recreated the navigations so that i dont have
//to use the longer versions of them

//navigate to next page
nextNav(BuildContext context, intent) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: ((context) => intent),
    ),
  );
}

//custom button. not really used
styleButton() {
  return ButtonStyle(
      minimumSize: MaterialStateProperty.all(
        const Size(10, 30),
      ),
      backgroundColor: MaterialStateProperty.all(Colors.green));
}

//navigate to next page in such a way that when i come back,
//the page wont be there anymore. 
nextNavRemoveHistory(BuildContext context, intent) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => intent),
    (route) => false,
  );
}

//navigate to previous page
prevNav(BuildContext context) {
  Navigator.pop(context);
}

//snackbar to display message and dismissed after few seconds
snackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(text)));
}

// var logger = Logger();

