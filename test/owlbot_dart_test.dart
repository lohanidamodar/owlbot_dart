import 'package:flutter_test/flutter_test.dart';
import 'package:owlbot_dart/owlbot_dart.dart';
import 'token.dart';

void main() {
  test('can get definition', ()async {
    final owlbot = OwlBot(token: TOKEN);
    final res = await owlbot.define(word: "owl");
    assert(res is OwlBotResponse);
  });
}
