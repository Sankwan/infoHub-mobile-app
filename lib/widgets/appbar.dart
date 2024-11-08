import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:info_hub_project/screens/profile.dart';

AppBar header(context) {
  return AppBar(
    elevation: 0.0,
    leading: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: IconButton(onPressed: () {}, icon: const Icon(Icons.subject)),
    ),
    title: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => Profile(),
                ),
              );
            },
            child: const CircleAvatar(
              radius: 23,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('assets/images/story/cm1.jpeg'),
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Container(
              height: 35.0,
              // width: 200.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: [
                    SizedBox(width: 3),
                    Icon(
                      Iconsax.search_normal,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Search...',
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    actions: [
      InkWell(
        onTap: () => print('tapped!'),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 10),
          child: Stack(
            children: <Widget>[
              const Icon(
                Iconsax.notification,
                size: 30,
                //  color: Colors.black,
              ),
              Positioned(
                top: 5,
                right: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: new Offset(0.0, 0.0),
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(0.5),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
