// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:story_view/story_controller.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  const StoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text("Hi", Colors.red),
      StoryItem.pageImage(
        const NetworkImage(
            "https://www.akamai.com/content/dam/site/im-demo/perceptual-standard.jpg?imbypass=true"),
      ),
      StoryItem.pageGif(
          "https://www.hubspot.com/hubfs/Smiling%20Leo%20Perfect%20GIF.gif")
    ];
    return Material(
      child: StoryView(
        storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}
