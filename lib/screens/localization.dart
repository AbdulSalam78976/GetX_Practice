import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localization extends StatefulWidget {
  const Localization({super.key});

  @override
  State<Localization> createState() => _LocalizationState();
}

class _LocalizationState extends State<Localization> {
  // List of supported locales
  final List<Locale> locales = const [
    Locale('en', 'US'),
    Locale('zh', 'CN'),
    Locale('ur', 'PK'),
  ];

  // For displaying language names
  final Map<String, String> languageNames = {
    'en_US': 'English',
    'zh_CN': 'Chinese',
    'ur_PK': 'Urdu',
  };

  Locale selectedLocale = const Locale('en', 'US');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Localization")),
      body: Column(
        children: [
          const SizedBox(height: 24),
          // Dropdown for language selection
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DropdownButton<Locale>(
              value: Locale('en', 'US'),
              isExpanded: true,
              items: locales.map((locale) {
                final key = '${locale.languageCode}_${locale.countryCode}';
                return DropdownMenuItem<Locale>(
                  value: locale,
                  child: Text(languageNames[key] ?? key),
                );
              }).toList(),
              onChanged: (Locale? newLocale) {
                if (newLocale != null) {
                  setState(() {
                    selectedLocale = newLocale;
                  });
                  Get.updateLocale(newLocale);
                }
              },
            ),
          ),
          const SizedBox(height: 24),
          ListTile(title: Text('message'.tr), subtitle: Text('Abdul'.tr)),
        ],
      ),
    );
  }
}
