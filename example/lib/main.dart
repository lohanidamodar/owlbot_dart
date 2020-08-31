import 'package:owlbot_dart/owlbot_dart.dart';

///A pure dart script that fetches definition of a word from https://owlbot.info API
///
///This showcases how to use `owlbot_dart` library

Future<void> main() async {
  /// Instiantiate the `OwlBot` with [token] which you can get for free from https://owlbot.info
  final OwlBot owlBot = OwlBot(token: "API_TOKEN");

  /// Using the [define] function, get the definitions of the provided [word]
  /// [OwlBotResponse] object is returned
  final OwlBotResponse res = await owlBot.define(word: "owl");
  print("Pronounciation: ${res.pronunciation}");
  res.definitions.forEach((def) {
    print(def.definition);
  });
}
