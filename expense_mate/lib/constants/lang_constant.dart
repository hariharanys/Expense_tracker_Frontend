class LangConstants {
  Map<String, Map<String, Map<String, String>>> langText = {};

  String currentLang = "en-us";

  //splashscreen
  String splashscreen = 'splashscreen';
  String lblGreeting = 'lblGreeting';
  String lblSplashContent = 'lblSplashContent';
  String lblSplashLogIn = 'lblSplashLogIn';
  String lblSplashSignUp = 'lblSplashSignUp';

  void initialize() {
    Map<String, Map<String, String>> data = {
      splashscreen: {
        lblGreeting: "Welcome to ExpenseMate!",
        lblSplashContent:
            "ExpenseMate is the ultimate expense tracking app. Start managing your",
        lblSplashLogIn: "LOG IN",
        lblSplashSignUp: "SIGN UP"
      }
    };
    langText.putIfAbsent(currentLang, () => data);
  }

  String getText(String mainkey, String subkey) {
    return langText[currentLang]?[mainkey]?[subkey] ?? "----";
  }
}
