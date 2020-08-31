part of owlbot_dart;

class OwlBot {
  final String token;
  final baseURL = 'https://owlbot.info';
  final timeOut = 5000;
/*             final headers = {'Authorization': 'Token '+token} */

  OwlBot({@required this.token})
      : assert(
            token != null || token.isNotEmpty, "token cannot be null or empty");

  Future<OwlBotResponse> define({@required word}) async {
    final res = await http.Client().get("$baseURL/api/v4/dictionary/$word",
        headers: {'Authorization': 'Token ' + token});
    if (res.statusCode == 200) {
      return OwlBotResponse.fromJson(json.decode(res.body));
    } else {
      return null;
    }
  }
}
