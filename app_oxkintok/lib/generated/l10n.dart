// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Oxkintok`
  String get appTitle {
    return Intl.message('Oxkintok', name: 'appTitle', desc: '', args: []);
  }

  /// `Welcome`
  String get welcomeMessage {
    return Intl.message('Welcome', name: 'welcomeMessage', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Guide`
  String get guide {
    return Intl.message('Guide', name: 'guide', desc: '', args: []);
  }

  /// `Map`
  String get map {
    return Intl.message('Map', name: 'map', desc: '', args: []);
  }

  /// `Scanner`
  String get scanner {
    return Intl.message('Scanner', name: 'scanner', desc: '', args: []);
  }

  /// `Data and Curiosities`
  String get dataAndCuriosities {
    return Intl.message(
      'Data and Curiosities',
      name: 'dataAndCuriosities',
      desc: '',
      args: [],
    );
  }

  /// `History and Evolution`
  String get historyAndEvolution {
    return Intl.message(
      'History and Evolution',
      name: 'historyAndEvolution',
      desc: '',
      args: [],
    );
  }

  /// `Recommendations for visits`
  String get Recommendations {
    return Intl.message(
      'Recommendations for visits',
      name: 'Recommendations',
      desc: '',
      args: [],
    );
  }

  /// `Security and Emergency`
  String get securityAndEmergency {
    return Intl.message(
      'Security and Emergency',
      name: 'securityAndEmergency',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get languages {
    return Intl.message('Languages', name: 'languages', desc: '', args: []);
  }

  /// `Exit`
  String get exit {
    return Intl.message('Exit', name: 'exit', desc: '', args: []);
  }

  /// `Are you sure you want to exit?`
  String get confirmExit {
    return Intl.message(
      'Are you sure you want to exit?',
      name: 'confirmExit',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation message for exiting the app.`
  String get confirmExitDescription {
    return Intl.message(
      'Confirmation message for exiting the app.',
      name: 'confirmExitDescription',
      desc: '',
      args: [],
    );
  }

  /// `More Information`
  String get moreInfo {
    return Intl.message(
      'More Information',
      name: 'moreInfo',
      desc: '',
      args: [],
    );
  }

  /// `Discover the wonders of Oxkintok, an archaeological site full of history and culture.`
  String get animatedText1 {
    return Intl.message(
      'Discover the wonders of Oxkintok, an archaeological site full of history and culture.',
      name: 'animatedText1',
      desc: '',
      args: [],
    );
  }

  /// `Oxkintok is considered one of the most important settlements in northern Yucatán and perhaps the oldest city in the central Puuc region. Its position allowed it to control the flow of trade goods from the south of the peninsula and connect with other contemporary cultures. Its main chronology is Late Preclassic and extends to the Early Postclassic, from 300 B.C. to approximately 1200 A.D.`
  String get animatedText2 {
    return Intl.message(
      'Oxkintok is considered one of the most important settlements in northern Yucatán and perhaps the oldest city in the central Puuc region. Its position allowed it to control the flow of trade goods from the south of the peninsula and connect with other contemporary cultures. Its main chronology is Late Preclassic and extends to the Early Postclassic, from 300 B.C. to approximately 1200 A.D.',
      name: 'animatedText2',
      desc: '',
      args: [],
    );
  }

  /// `Language Settings`
  String get languageSettings {
    return Intl.message(
      'Language Settings',
      name: 'languageSettings',
      desc: '',
      args: [],
    );
  }

  /// `Select language:`
  String get selectLanguage {
    return Intl.message(
      'Select language:',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Language Change`
  String get confirmLanguageChange {
    return Intl.message(
      'Confirm Language Change',
      name: 'confirmLanguageChange',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to change the language to`
  String get confirmLanguageChangeMessage {
    return Intl.message(
      'Are you sure you want to change the language to',
      name: 'confirmLanguageChangeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Accept`
  String get accept {
    return Intl.message('Accept', name: 'accept', desc: '', args: []);
  }

  /// `Oxkintok Visit Plan`
  String get planVisitaOxkintok {
    return Intl.message(
      'Oxkintok Visit Plan',
      name: 'planVisitaOxkintok',
      desc: '',
      args: [],
    );
  }

  /// `Days and Hours`
  String get daysAndHours {
    return Intl.message(
      'Days and Hours',
      name: 'daysAndHours',
      desc: '',
      args: [],
    );
  }

  /// `Best Time to Visit`
  String get bestTimeToVisit {
    return Intl.message(
      'Best Time to Visit',
      name: 'bestTimeToVisit',
      desc: '',
      args: [],
    );
  }

  /// `Transport`
  String get transport {
    return Intl.message('Transport', name: 'transport', desc: '', args: []);
  }

  /// `Weather`
  String get weather {
    return Intl.message('Weather', name: 'weather', desc: '', args: []);
  }

  /// `Local Guides`
  String get localGuides {
    return Intl.message(
      'Local Guides',
      name: 'localGuides',
      desc: '',
      args: [],
    );
  }

  /// `Nearby Attractions`
  String get nearbyAttractions {
    return Intl.message(
      'Nearby Attractions',
      name: 'nearbyAttractions',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get services {
    return Intl.message('Services', name: 'services', desc: '', args: []);
  }

  /// `Respect the Site`
  String get respectSite {
    return Intl.message(
      'Respect the Site',
      name: 'respectSite',
      desc: '',
      args: [],
    );
  }

  /// `Oxkintok is open from 8:00 AM to 5:00 PM. The last entry is at 4:00 PM. It's recommended to arrive early to make the most of the visit.`
  String get recommendation1 {
    return Intl.message(
      'Oxkintok is open from 8:00 AM to 5:00 PM. The last entry is at 4:00 PM. It\'s recommended to arrive early to make the most of the visit.',
      name: 'recommendation1',
      desc: '',
      args: [],
    );
  }

  /// `Remember that hours may vary on holidays, so check before planning your visit.`
  String get recommendation2 {
    return Intl.message(
      'Remember that hours may vary on holidays, so check before planning your visit.',
      name: 'recommendation2',
      desc: '',
      args: [],
    );
  }

  /// `If you're coming from Maxcanú, make sure to leave with enough time as the journey to Oxkintok can take around an hour.`
  String get recommendation3 {
    return Intl.message(
      'If you\'re coming from Maxcanú, make sure to leave with enough time as the journey to Oxkintok can take around an hour.',
      name: 'recommendation3',
      desc: '',
      args: [],
    );
  }

  /// `Visiting early in the morning helps avoid the intense heat and allows you to enjoy the site with fewer visitors.`
  String get recommendation4 {
    return Intl.message(
      'Visiting early in the morning helps avoid the intense heat and allows you to enjoy the site with fewer visitors.',
      name: 'recommendation4',
      desc: '',
      args: [],
    );
  }

  /// `Take advantage of the calm early hours to take photos with fewer people around.`
  String get recommendation5 {
    return Intl.message(
      'Take advantage of the calm early hours to take photos with fewer people around.',
      name: 'recommendation5',
      desc: '',
      args: [],
    );
  }

  /// `If you're coming from Maxcanú, we recommend leaving early to avoid the hottest hours of the day.`
  String get recommendation6 {
    return Intl.message(
      'If you\'re coming from Maxcanú, we recommend leaving early to avoid the hottest hours of the day.',
      name: 'recommendation6',
      desc: '',
      args: [],
    );
  }

  /// `It is advisable to have your own vehicle, as public transportation to Oxkintok is limited. From Mérida, the drive takes about an hour.`
  String get recommendation7 {
    return Intl.message(
      'It is advisable to have your own vehicle, as public transportation to Oxkintok is limited. From Mérida, the drive takes about an hour.',
      name: 'recommendation7',
      desc: '',
      args: [],
    );
  }

  /// `From Maxcanú, Yucatán, the distance to the Oxkintok archaeological site is approximately 50 km. If you take the Tren Maya, the trip takes around 40 minutes to the nearest station.`
  String get recommendation8 {
    return Intl.message(
      'From Maxcanú, Yucatán, the distance to the Oxkintok archaeological site is approximately 50 km. If you take the Tren Maya, the trip takes around 40 minutes to the nearest station.',
      name: 'recommendation8',
      desc: '',
      args: [],
    );
  }

  /// `Consider renting a car if you don't have one available.`
  String get recommendation9 {
    return Intl.message(
      'Consider renting a car if you don\'t have one available.',
      name: 'recommendation9',
      desc: '',
      args: [],
    );
  }

  /// `The weather in the region is usually hot. Wear lightweight clothing, sunscreen, a hat, and bring plenty of water to stay hydrated during the tour.`
  String get recommendation10 {
    return Intl.message(
      'The weather in the region is usually hot. Wear lightweight clothing, sunscreen, a hat, and bring plenty of water to stay hydrated during the tour.',
      name: 'recommendation10',
      desc: '',
      args: [],
    );
  }

  /// `Even though it's hot, humidity can be high. Wear comfortable and breathable clothing.`
  String get recommendation11 {
    return Intl.message(
      'Even though it\'s hot, humidity can be high. Wear comfortable and breathable clothing.',
      name: 'recommendation11',
      desc: '',
      args: [],
    );
  }

  /// `The weather in Maxcanú can also be hot, so it's important to be prepared before you start your trip to Oxkintok.`
  String get recommendation12 {
    return Intl.message(
      'The weather in Maxcanú can also be hot, so it\'s important to be prepared before you start your trip to Oxkintok.',
      name: 'recommendation12',
      desc: '',
      args: [],
    );
  }

  /// `Hiring a local guide can enrich your experience by providing detailed information about the site's history and architecture.`
  String get recommendation13 {
    return Intl.message(
      'Hiring a local guide can enrich your experience by providing detailed information about the site\'s history and architecture.',
      name: 'recommendation13',
      desc: '',
      args: [],
    );
  }

  /// `Local guides can also show you less crowded paths for a more intimate experience.`
  String get recommendation14 {
    return Intl.message(
      'Local guides can also show you less crowded paths for a more intimate experience.',
      name: 'recommendation14',
      desc: '',
      args: [],
    );
  }

  /// `If you're passing through Maxcanú, some local guides offer tours that include Oxkintok and other nearby sites, which can be an excellent option.`
  String get recommendation15 {
    return Intl.message(
      'If you\'re passing through Maxcanú, some local guides offer tours that include Oxkintok and other nearby sites, which can be an excellent option.',
      name: 'recommendation15',
      desc: '',
      args: [],
    );
  }

  /// `After visiting Oxkintok, consider exploring the Calcehtok Caves, located near the archaeological site. These caves are known for their impressive underground formations.`
  String get recommendation16 {
    return Intl.message(
      'After visiting Oxkintok, consider exploring the Calcehtok Caves, located near the archaeological site. These caves are known for their impressive underground formations.',
      name: 'recommendation16',
      desc: '',
      args: [],
    );
  }

  /// `Another option is to visit the Uxmal archaeological site, one of the region's main tourist attractions.`
  String get recommendation17 {
    return Intl.message(
      'Another option is to visit the Uxmal archaeological site, one of the region\'s main tourist attractions.',
      name: 'recommendation17',
      desc: '',
      args: [],
    );
  }

  /// `If you're passing through Maxcanú, you can also take the opportunity to explore some of the nearby small towns that offer authentic regional experiences.`
  String get recommendation18 {
    return Intl.message(
      'If you\'re passing through Maxcanú, you can also take the opportunity to explore some of the nearby small towns that offer authentic regional experiences.',
      name: 'recommendation18',
      desc: '',
      args: [],
    );
  }

  /// `Keep in mind that services in the area are basic. It's recommended to bring snacks and any other items you may need during your visit.`
  String get recommendation19 {
    return Intl.message(
      'Keep in mind that services in the area are basic. It\'s recommended to bring snacks and any other items you may need during your visit.',
      name: 'recommendation19',
      desc: '',
      args: [],
    );
  }

  /// `Don't forget to bring a reusable water bottle to stay hydrated.`
  String get recommendation20 {
    return Intl.message(
      'Don\'t forget to bring a reusable water bottle to stay hydrated.',
      name: 'recommendation20',
      desc: '',
      args: [],
    );
  }

  /// `In Maxcanú, you'll also find stores where you can buy basic products before heading to Oxkintok.`
  String get recommendation21 {
    return Intl.message(
      'In Maxcanú, you\'ll also find stores where you can buy basic products before heading to Oxkintok.',
      name: 'recommendation21',
      desc: '',
      args: [],
    );
  }

  /// `Oxkintok is a highly valuable archaeological site. Follow the guidelines, don't climb unpermitted structures, and don't leave trash.`
  String get recommendation22 {
    return Intl.message(
      'Oxkintok is a highly valuable archaeological site. Follow the guidelines, don\'t climb unpermitted structures, and don\'t leave trash.',
      name: 'recommendation22',
      desc: '',
      args: [],
    );
  }

  /// `Remember that respecting cultural heritage helps preserve these places for future generations.`
  String get recommendation23 {
    return Intl.message(
      'Remember that respecting cultural heritage helps preserve these places for future generations.',
      name: 'recommendation23',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get information {
    return Intl.message('Information', name: 'information', desc: '', args: []);
  }

  /// `LOCATION`
  String get location {
    return Intl.message('LOCATION', name: 'location', desc: '', args: []);
  }

  /// `It is located to the south of Yucatán in the municipality of Maxcanú, 74 km from the city of Mérida. You can go to the menu in the location module where you'll find a map with directions to get there.`
  String get locationDescription {
    return Intl.message(
      'It is located to the south of Yucatán in the municipality of Maxcanú, 74 km from the city of Mérida. You can go to the menu in the location module where you\'ll find a map with directions to get there.',
      name: 'locationDescription',
      desc: '',
      args: [],
    );
  }

  /// `ACCESS`
  String get access {
    return Intl.message('ACCESS', name: 'access', desc: '', args: []);
  }

  /// `By federal highway number 180, which leads to the city of Campeche, or by Villa de Maxcanú to the town of Calcehtok.`
  String get accessDescription {
    return Intl.message(
      'By federal highway number 180, which leads to the city of Campeche, or by Villa de Maxcanú to the town of Calcehtok.',
      name: 'accessDescription',
      desc: '',
      args: [],
    );
  }

  /// `HOURS`
  String get hours {
    return Intl.message('HOURS', name: 'hours', desc: '', args: []);
  }

  /// `Monday to Sunday from 08:00 to 17:00 hrs. Last entry at 16:00 hrs.`
  String get hoursDescription {
    return Intl.message(
      'Monday to Sunday from 08:00 to 17:00 hrs. Last entry at 16:00 hrs.',
      name: 'hoursDescription',
      desc: '',
      args: [],
    );
  }

  /// `ENTRANCE`
  String get entrance {
    return Intl.message('ENTRANCE', name: 'entrance', desc: '', args: []);
  }

  /// `$75.00 pesos`
  String get entranceFee {
    return Intl.message(
      '\$75.00 pesos',
      name: 'entranceFee',
      desc: '',
      args: [],
    );
  }

  /// `RESTRICTIONS`
  String get restrictions {
    return Intl.message(
      'RESTRICTIONS',
      name: 'restrictions',
      desc: '',
      args: [],
    );
  }

  /// `- Smoking is prohibited\n- Food is not allowed\n- Pets are not allowed`
  String get restrictionsDescription {
    return Intl.message(
      '- Smoking is prohibited\n- Food is not allowed\n- Pets are not allowed',
      name: 'restrictionsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Security and Emergency`
  String get securityAndEmergencypage {
    return Intl.message(
      'Security and Emergency',
      name: 'securityAndEmergencypage',
      desc: '',
      args: [],
    );
  }

  /// `Emergency Contacts:`
  String get emergencyContacts {
    return Intl.message(
      'Emergency Contacts:',
      name: 'emergencyContacts',
      desc: '',
      args: [],
    );
  }

  /// `Firefighters`
  String get firefighters {
    return Intl.message(
      'Firefighters',
      name: 'firefighters',
      desc: '',
      args: [],
    );
  }

  /// `Police`
  String get police {
    return Intl.message('Police', name: 'police', desc: '', args: []);
  }

  /// `Medical Services`
  String get medicalServices {
    return Intl.message(
      'Medical Services',
      name: 'medicalServices',
      desc: '',
      args: [],
    );
  }

  /// `911`
  String get emergencyContactNumber {
    return Intl.message(
      '911',
      name: 'emergencyContactNumber',
      desc: '',
      args: [],
    );
  }

  /// `Security Protocols:`
  String get securityProtocols {
    return Intl.message(
      'Security Protocols:',
      name: 'securityProtocols',
      desc: '',
      args: [],
    );
  }

  /// `In case of fire, follow the evacuation routes.`
  String get fireProtocol {
    return Intl.message(
      'In case of fire, follow the evacuation routes.',
      name: 'fireProtocol',
      desc: '',
      args: [],
    );
  }

  /// `Head to the safe areas marked on the map.`
  String get safeAreasProtocol {
    return Intl.message(
      'Head to the safe areas marked on the map.',
      name: 'safeAreasProtocol',
      desc: '',
      args: [],
    );
  }

  /// `Report any emergency to the staff.`
  String get reportEmergency {
    return Intl.message(
      'Report any emergency to the staff.',
      name: 'reportEmergency',
      desc: '',
      args: [],
    );
  }

  /// `Safe Areas and First Aid:`
  String get safeAreasAndFirstAid {
    return Intl.message(
      'Safe Areas and First Aid:',
      name: 'safeAreasAndFirstAid',
      desc: '',
      args: [],
    );
  }

  /// `Interactive map here`
  String get interactiveMap {
    return Intl.message(
      'Interactive map here',
      name: 'interactiveMap',
      desc: '',
      args: [],
    );
  }

  /// `Practical Tips:`
  String get practicalTips {
    return Intl.message(
      'Practical Tips:',
      name: 'practicalTips',
      desc: '',
      args: [],
    );
  }

  /// `Stay hydrated, carry a water bottle.`
  String get stayHydrated {
    return Intl.message(
      'Stay hydrated, carry a water bottle.',
      name: 'stayHydrated',
      desc: '',
      args: [],
    );
  }

  /// `Use sunscreen to avoid sunburn.`
  String get useSunscreen {
    return Intl.message(
      'Use sunscreen to avoid sunburn.',
      name: 'useSunscreen',
      desc: '',
      args: [],
    );
  }

  /// `Walk carefully on uneven terrain.`
  String get walkCarefully {
    return Intl.message(
      'Walk carefully on uneven terrain.',
      name: 'walkCarefully',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
