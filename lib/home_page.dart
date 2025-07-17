import 'package:flutter/material.dart';
import 'package:ginny_ai/features_box.dart';
import 'package:ginny_ai/pallete.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ginny AI"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: [
          // virtual assistant picture
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/virtualAssistant.png'),
                  ),
                ),
              ),
            ],
          ),
          //chat bubble
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
            decoration: BoxDecoration(
              border: Border.all(color: Pallete.blackColor),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Good Morning, what task can I do for you?',
                style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 25,
                  fontFamily: 'Cera Pro',
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10, left: 22),
            alignment: Alignment.centerLeft,
            child: Text(
              "Here the few features",
              style: TextStyle(
                fontFamily: 'Cero Pro',
                color: Pallete.mainFontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Features list
          Column(
            children: [
              FeaturesBox(
                color: Pallete.firstSuggestionBoxColor,
                headerText: "ChatGPT",
                descriptionText:
                    'A Smarter way to stay organized and informed with ChatGPT',
              ),
              FeaturesBox(
                color: Pallete.secondSuggestionBoxColor,
                headerText: "Dall-E",
                descriptionText:
                    'Get inspired and stay creative with your personal assistant powered by Dall-E',
              ),
              FeaturesBox(
                color: Pallete.thirdSuggestionBoxColor,
                headerText: "Smart Voice Assistant",
                descriptionText:
                    'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mic),
        backgroundColor: Pallete.firstSuggestionBoxColor,
      ),
    );
  }
}
