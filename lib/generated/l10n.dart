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

  /// `Welcome`
  String get welcome {
    return Intl.message('Welcome', name: 'welcome', desc: '', args: []);
  }

  /// `Email / Phone Number`
  String get emailandphone {
    return Intl.message(
      'Email / Phone Number',
      name: 'emailandphone',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `let's Play`
  String get letsplay {
    return Intl.message('let\'s Play', name: 'letsplay', desc: '', args: []);
  }

  /// `Dont’t have an account yet?`
  String get loginask {
    return Intl.message(
      'Dont’t have an account yet?',
      name: 'loginask',
      desc: '',
      args: [],
    );
  }

  /// `SignUp`
  String get signup {
    return Intl.message('SignUp', name: 'signup', desc: '', args: []);
  }

  /// `LogOut`
  String get logout {
    return Intl.message('LogOut', name: 'logout', desc: '', args: []);
  }

  /// `Play`
  String get play {
    return Intl.message('Play', name: 'play', desc: '', args: []);
  }

  /// `Sponsored By`
  String get sponsoredby {
    return Intl.message(
      'Sponsored By',
      name: 'sponsoredby',
      desc: '',
      args: [],
    );
  }

  /// `Teams`
  String get teams {
    return Intl.message('Teams', name: 'teams', desc: '', args: []);
  }

  /// `Tournment`
  String get tourtment {
    return Intl.message('Tournment', name: 'tourtment', desc: '', args: []);
  }

  /// `Work Out`
  String get workout {
    return Intl.message('Work Out', name: 'workout', desc: '', args: []);
  }

  /// `Point Earned`
  String get pointearned {
    return Intl.message(
      'Point Earned',
      name: 'pointearned',
      desc: '',
      args: [],
    );
  }

  /// `Pitches`
  String get pitches {
    return Intl.message('Pitches', name: 'pitches', desc: '', args: []);
  }

  /// `Referee Mode`
  String get refereemode {
    return Intl.message(
      'Referee Mode',
      name: 'refereemode',
      desc: '',
      args: [],
    );
  }

  /// `Pitch Booking`
  String get pitchbooking {
    return Intl.message(
      'Pitch Booking',
      name: 'pitchbooking',
      desc: '',
      args: [],
    );
  }

  /// `Friendly Match`
  String get friendlymatch {
    return Intl.message(
      'Friendly Match',
      name: 'friendlymatch',
      desc: '',
      args: [],
    );
  }

  /// `Enter Tournment`
  String get entertournment {
    return Intl.message(
      'Enter Tournment',
      name: 'entertournment',
      desc: '',
      args: [],
    );
  }

  /// `Challenge Team`
  String get challengeteam {
    return Intl.message(
      'Challenge Team',
      name: 'challengeteam',
      desc: '',
      args: [],
    );
  }

  /// `My Tournments`
  String get mytournment {
    return Intl.message(
      'My Tournments',
      name: 'mytournment',
      desc: '',
      args: [],
    );
  }

  /// `Join Tournments`
  String get jointournment {
    return Intl.message(
      'Join Tournments',
      name: 'jointournment',
      desc: '',
      args: [],
    );
  }

  /// `Request Tournments`
  String get requesttournment {
    return Intl.message(
      'Request Tournments',
      name: 'requesttournment',
      desc: '',
      args: [],
    );
  }

  /// `My Teams`
  String get myteams {
    return Intl.message('My Teams', name: 'myteams', desc: '', args: []);
  }

  /// `Other Teams`
  String get otherteams {
    return Intl.message('Other Teams', name: 'otherteams', desc: '', args: []);
  }

  /// `+Create Teams`
  String get createteam {
    return Intl.message(
      '+Create Teams',
      name: 'createteam',
      desc: '',
      args: [],
    );
  }

  /// `Area`
  String get area {
    return Intl.message('Area', name: 'area', desc: '', args: []);
  }

  /// `Sort By`
  String get sortby {
    return Intl.message('Sort By', name: 'sortby', desc: '', args: []);
  }

  /// `Search By Team ID`
  String get searchbyteamID {
    return Intl.message(
      'Search By Team ID',
      name: 'searchbyteamID',
      desc: '',
      args: [],
    );
  }

  /// `Request To Join`
  String get requesttojoin {
    return Intl.message(
      'Request To Join',
      name: 'requesttojoin',
      desc: '',
      args: [],
    );
  }

  /// `Upload Photo:`
  String get uploadphoto {
    return Intl.message(
      'Upload Photo:',
      name: 'uploadphoto',
      desc: '',
      args: [],
    );
  }

  /// `Team Name:`
  String get teamname {
    return Intl.message('Team Name:', name: 'teamname', desc: '', args: []);
  }

  /// `Name Of Team`
  String get nameofteam {
    return Intl.message('Name Of Team', name: 'nameofteam', desc: '', args: []);
  }

  /// `Preferred Playing Days:`
  String get preferredplayingdays {
    return Intl.message(
      'Preferred Playing Days:',
      name: 'preferredplayingdays',
      desc: '',
      args: [],
    );
  }

  /// `Preferred Playing Area:`
  String get preferredplayingareas {
    return Intl.message(
      'Preferred Playing Area:',
      name: 'preferredplayingareas',
      desc: '',
      args: [],
    );
  }

  /// `Primary Area`
  String get primaryarea {
    return Intl.message(
      'Primary Area',
      name: 'primaryarea',
      desc: '',
      args: [],
    );
  }

  /// `SAT`
  String get satday {
    return Intl.message('SAT', name: 'satday', desc: '', args: []);
  }

  /// `SUN`
  String get sunday {
    return Intl.message('SUN', name: 'sunday', desc: '', args: []);
  }

  /// `Mon`
  String get monday {
    return Intl.message('Mon', name: 'monday', desc: '', args: []);
  }

  /// `TUE`
  String get tuethday {
    return Intl.message('TUE', name: 'tuethday', desc: '', args: []);
  }

  /// `WEN`
  String get wensday {
    return Intl.message('WEN', name: 'wensday', desc: '', args: []);
  }

  /// `THU`
  String get thurtday {
    return Intl.message('THU', name: 'thurtday', desc: '', args: []);
  }

  /// `FRI`
  String get friday {
    return Intl.message('FRI', name: 'friday', desc: '', args: []);
  }

  /// `Create`
  String get create {
    return Intl.message('Create', name: 'create', desc: '', args: []);
  }

  /// `Type:`
  String get type {
    return Intl.message('Type:', name: 'type', desc: '', args: []);
  }

  /// `From:`
  String get from {
    return Intl.message('From:', name: 'from', desc: '', args: []);
  }

  /// `To:`
  String get to {
    return Intl.message('To:', name: 'to', desc: '', args: []);
  }

  /// `Join`
  String get join {
    return Intl.message('Join', name: 'join', desc: '', args: []);
  }

  /// `Count Of Team`
  String get countofteam {
    return Intl.message(
      'Count Of Team',
      name: 'countofteam',
      desc: '',
      args: [],
    );
  }

  /// `Types Of Tournment`
  String get typesoftournment {
    return Intl.message(
      'Types Of Tournment',
      name: 'typesoftournment',
      desc: '',
      args: [],
    );
  }

  /// `Data & Time "start"`
  String get dateandtime {
    return Intl.message(
      'Data & Time "start"',
      name: 'dateandtime',
      desc: '',
      args: [],
    );
  }

  /// `Calender`
  String get calender {
    return Intl.message('Calender', name: 'calender', desc: '', args: []);
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }

  /// `KnockOut`
  String get knockout {
    return Intl.message('KnockOut', name: 'knockout', desc: '', args: []);
  }

  /// `Fixture & Details`
  String get fixtureanddetails {
    return Intl.message(
      'Fixture & Details',
      name: 'fixtureanddetails',
      desc: '',
      args: [],
    );
  }

  /// `Champions`
  String get champions {
    return Intl.message('Champions', name: 'champions', desc: '', args: []);
  }

  /// `Table`
  String get table {
    return Intl.message('Table', name: 'table', desc: '', args: []);
  }

  /// `Matches`
  String get matches {
    return Intl.message('Matches', name: 'matches', desc: '', args: []);
  }

  /// `Top Scorer`
  String get topscorer {
    return Intl.message('Top Scorer', name: 'topscorer', desc: '', args: []);
  }

  /// `MVP`
  String get mvp {
    return Intl.message('MVP', name: 'mvp', desc: '', args: []);
  }

  /// `Rank`
  String get rank {
    return Intl.message('Rank', name: 'rank', desc: '', args: []);
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Goals`
  String get goals {
    return Intl.message('Goals', name: 'goals', desc: '', args: []);
  }

  /// `Team`
  String get team {
    return Intl.message('Team', name: 'team', desc: '', args: []);
  }

  /// `Rating`
  String get rating {
    return Intl.message('Rating', name: 'rating', desc: '', args: []);
  }

  /// `GroupA`
  String get groupa {
    return Intl.message('GroupA', name: 'groupa', desc: '', args: []);
  }

  /// `GroubB`
  String get groupb {
    return Intl.message('GroubB', name: 'groupb', desc: '', args: []);
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `Choose`
  String get choose {
    return Intl.message('Choose', name: 'choose', desc: '', args: []);
  }

  /// `Time`
  String get time {
    return Intl.message('Time', name: 'time', desc: '', args: []);
  }

  /// `Price`
  String get price {
    return Intl.message('Price', name: 'price', desc: '', args: []);
  }

  /// `Location`
  String get location {
    return Intl.message('Location', name: 'location', desc: '', args: []);
  }

  /// `Shearch For a Pitch or Location`
  String get searchlocation {
    return Intl.message(
      'Shearch For a Pitch or Location',
      name: 'searchlocation',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
