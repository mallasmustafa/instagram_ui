import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
    "images/1.jpg",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png",
    "images/6.png",
  ];
  List<String> post = [
    "images/post_1.png",
    "images/post_2.png",
    "images/post_3.png",
    "images/post_4.png",
    "images/post_5.png",
    "images/post_6.png",
  ];
  List<String> name = [
    "Mallas",
    "Mustafa",
    "Ali",
    "Ahmed",
    "Humza",
    "Anas",
  ];
  List<String> caption = [
    "I have to develop app in flutter",
    "Github contribution graph",
    "Favourite game",
    "Dream Car",
    "New phones",
    "Nature",
  ];
  List<String> comment = [
    "view all 150 comments",
    "view all 47 comments",
    "view all 19 comments",
    "view all 22 comments",
    "view all 39 comments",
    "view all 78 comments",
  ];
  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Instagram",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.heart,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
              )),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 38,
                            backgroundImage:
                                const AssetImage("images/story.png"),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(profileImage[index]),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            name[index],
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Column(
                children: List.generate(
                  6,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage: const AssetImage("images/story.png"),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                    AssetImage(profileImage[index]),
                              ),
                            ),
                          ),
                          Text(
                            name[index],
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.more_vert))
                        ],
                      ),
                      Image(
                        height: 280,
                        width: 500,
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                          post[index],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.heart),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chat_bubble_outline),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.bookmark),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: "Liked by "),
                                  TextSpan(
                                    text: "Mallas ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "and ",
                                  ),
                                  TextSpan(
                                      text: "others ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: name[index],
                                    style:
                                        const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: caption[index]),
                                ],
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              comment[index],
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
