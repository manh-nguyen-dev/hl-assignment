import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../mock_data.dart';
import '../models/joke_model.dart';

class JokeController extends GetxController {
  RxList<JokeModel> jokes = <JokeModel>[].obs;
  RxList<int> votedJokesId = <int>[].obs;

  @override
  void onInit() {
    super.onInit();
    jokes.value = jokesMock;
    _getVotedJokesId();
  }

  JokeModel? get currentJoke {
    return jokes.firstWhereOrNull((joke) => !votedJokesId.contains(joke.id));
  }

  bool get isEmpty => currentJoke?.text.isEmpty ?? true;

  double get _appBarHeight => AppBar().preferredSize.height;

  double get availableHeight => Get.height - _appBarHeight - 158 - 255 - 42;

  _getVotedJokesId() async {
    /// Get the instance of SharedPreferences
    final prefs = await SharedPreferences.getInstance();

    // Retrieve the list of string votedJokesId from SharedPreferences
    // then convert to a list of integers, or use an empty list if null
    votedJokesId.value = prefs
            .getStringList('votedJokesId')
            ?.map((str) => int.parse(str))
            .toList() ??
        [];
  }

  void toggleVoteButton() async {
    /// Get the instance of SharedPreferences
    final prefs = await SharedPreferences.getInstance();

    /// Add the id of selected joke to the list of integers
    votedJokesId.add(currentJoke!.id);

    ///  Save the updated list of integers back to SharedPreferences as a list of strings
    await prefs.setStringList('votedJokesId',
        votedJokesId.map((number) => number.toString()).toList());
  }
}
