import 'package:get/get.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {'message': 'What is your name', 'Name': 'Abdul'},
    'zh_CN': {'message': '你好世界', 'Name': '阿卜杜勒'},
    'ur_PK': {'message': 'آپ کا نام کیا ہے؟', 'Name': 'عبدال'},
  };
}
