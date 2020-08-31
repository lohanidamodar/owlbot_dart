part of owlbot_dart;

/// OwlBot
/// Instiantiate [OwlBot] with your [token] from https://owlbot.info to get
/// clean interface with owlbot API
///
///
/// ```dart
/// void main() async {
///   final OwlBot owlBot = OwlBot(token: "API_TOKEN");
///   final OwlBotResponse res = await owlBot.define(word: "owl");
///   print("Pronounciation: ${res.pronunciation}");
///   res.definitions.forEach((def) {
///     print(def.definition);
///   });
/// }
/// ```
///

class OwlBot {
  /// [token] for owlbot API, you can receive from https://owlbot.info
  final String token;
  final _baseURL = 'https://owlbot.info';

  /// Instiantiate with [token] for owlbot API, you can receive from https://owlbot.info
  OwlBot({@required this.token})
      : assert(
            token != null || token.isNotEmpty, "token cannot be null or empty");

  ///
  /// Get the definitions for the [word] and returns [OwlBotResponse]
  /// which contains the pronounciation, and list of [Definition]
  ///

  Future<OwlBotResponse> define({@required word}) async {
    final res = await http.Client().get(
      "$_baseURL/api/v4/dictionary/$word",
      headers: {'Authorization': 'Token ' + token},
    );
    if (res.statusCode == 200) {
      return OwlBotResponse._fromJson(json.decode(res.body));
    } else {
      return null;
    }
  }
}
