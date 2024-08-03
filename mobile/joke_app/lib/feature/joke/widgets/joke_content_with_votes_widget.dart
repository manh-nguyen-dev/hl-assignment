import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/joke_controller.dart';
import '../widgets/vote_button_widget.dart';
import '../../../utils/constants/app_colors.dart';

class JokeContentWithVotes extends StatelessWidget {
  const JokeContentWithVotes({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<JokeController>(
      init: JokeController(),
      builder: (controller) {
        if (controller.isEmpty) {
          return Container(
            height: controller.availableHeight,
            padding: const EdgeInsets.symmetric(vertical: 62, horizontal: 32),
            alignment: Alignment.center,
            child: const Text(
              "That's all the jokes for today! \nCome back another day!",
              style: TextStyle(
                color: AppColors.charcoal,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          );
        }
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 62, horizontal: 32),
              constraints: BoxConstraints(
                minHeight: controller.availableHeight,
              ),
              child: SingleChildScrollView(
                child: Text(
                  controller.currentJoke?.text ?? "",
                  style: const TextStyle(
                    color: AppColors.charcoal,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  VoteButton(
                    name: 'This is Funny!',
                    bgColor: AppColors.blue,
                    onTap: () => controller.toggleVoteButton(),
                  ),
                  VoteButton(
                    name: 'This is not funny.',
                    bgColor: AppColors.green,
                    onTap: () => controller.toggleVoteButton(),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
