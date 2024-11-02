import 'package:flutter/material.dart';
import 'package:info_hub_project/widgets/appbar.dart';
import 'package:info_hub_project/widgets/postsitem.dart';
import 'package:info_hub_project/widgets/saveitem.dart';
import 'package:info_hub_project/widgets/storyitem.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: ListView(
                padding: const EdgeInsets.only(left: 20, right: 10),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset('assets/images/launchericon.jpg'),
                      ),
                      const Text(
                        'InfoHub',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //Instagram story-like section
                  StoryItem(),
                  const Text(
                    'Popular Campus Locations',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  //images of popular locations on campus
                  SavedItem(),
                  const Text(
                    'Feeds',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  PostItem(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Newsfeed',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Ubuntu-Regular',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
