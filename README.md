# OwlBot

Clean, easy interface with [owlbot.info](https://owlbot.info) dictionary API

## Usage

To use this plugin add `owlbot_dart` as a [dependency in your pubspec.yaml file](https://flutter.io/docs/development/packages-and-plugins/using-packages).

## Example

```dart
void main() async {
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
```


## Developed & Maintained by

[Damodar Lohani](https://github.com/lohanidamodar)