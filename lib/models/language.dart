import 'package:get/get.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hint_text_name': 'Please enter your name',
      'hint_text_email': 'Please enter your email',
    },
    'hi_IN': {
      'hint_text_name': 'कृपया अपना नाम दर्ज करें',
      'hint_text_email': 'कृपया अपना ईमेल दर्ज करें',
    },
    'fr_FR': {
      'hint_text_name': 'Veuillez entrer votre nom',
      'hint_text_email': 'Veuillez entrer votre email',
    },
    'es_ES': {
      'hint_text_name': 'Por favor, introduzca su nombre',
      'hint_text_email': 'Por favor, introduzca su correo electrónico',
    },
    'de_DE': {
      'hint_text_name': 'Bitte geben Sie Ihren Namen ein',
      'hint_text_email': 'Bitte geben Sie Ihre E-Mail-Adresse ein',
    },
  };
}
