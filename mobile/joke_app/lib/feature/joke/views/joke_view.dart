import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/footer_section_widget.dart';
import '../widgets/header_section_widget.dart';
import '../widgets/joke_content_with_votes_widget.dart';

class JokeView extends StatelessWidget {
  const JokeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: JokeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            JokeContentWithVotes(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
