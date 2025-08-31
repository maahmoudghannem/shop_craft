import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'ShopCraft'**
  String get appTitle;

  /// No description provided for @slang.
  ///
  /// In en, this message translates to:
  /// **'Your Premium Shopping Experience'**
  String get slang;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @join.
  ///
  /// In en, this message translates to:
  /// **'Join ShopCraft Today'**
  String get join;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @enterFullName.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get enterFullName;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @enterEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address'**
  String get enterEmailAddress;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterPassword;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @enterConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Re-enter your password'**
  String get enterConfirmPassword;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome back'**
  String get welcomeBack;

  /// No description provided for @signInToShopCraft.
  ///
  /// In en, this message translates to:
  /// **'Sign in to ShopCraft'**
  String get signInToShopCraft;

  /// No description provided for @fieldRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get fieldRequired;

  /// No description provided for @firstLetterUppercase.
  ///
  /// In en, this message translates to:
  /// **'First letter must be uppercase'**
  String get firstLetterUppercase;

  /// No description provided for @onlyLettersAndSpaces.
  ///
  /// In en, this message translates to:
  /// **'Only letters and spaces are allowed'**
  String get onlyLettersAndSpaces;

  /// No description provided for @emailMustContainAt.
  ///
  /// In en, this message translates to:
  /// **'Email must contain @'**
  String get emailMustContainAt;

  /// No description provided for @passwordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be 6 characters at least'**
  String get passwordMinLength;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @accountCreated.
  ///
  /// In en, this message translates to:
  /// **'Account created successfully'**
  String get accountCreated;

  /// No description provided for @accountSignedIn.
  ///
  /// In en, this message translates to:
  /// **'Account signed in successfully'**
  String get accountSignedIn;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @ourProducts.
  ///
  /// In en, this message translates to:
  /// **'Our Products'**
  String get ourProducts;

  /// No description provided for @featuredProducts.
  ///
  /// In en, this message translates to:
  /// **'Featured Products'**
  String get featuredProducts;

  /// No description provided for @shopCollection.
  ///
  /// In en, this message translates to:
  /// **'Shop Our Collection'**
  String get shopCollection;

  /// No description provided for @hotOffers.
  ///
  /// In en, this message translates to:
  /// **'Hot Offers'**
  String get hotOffers;

  /// No description provided for @itemAdded.
  ///
  /// In en, this message translates to:
  /// **'Item added to cart'**
  String get itemAdded;

  /// No description provided for @itemRemoved.
  ///
  /// In en, this message translates to:
  /// **'Item removed from cart'**
  String get itemRemoved;

  /// No description provided for @premium.
  ///
  /// In en, this message translates to:
  /// **'Premium'**
  String get premium;

  /// No description provided for @perfect.
  ///
  /// In en, this message translates to:
  /// **'perfect'**
  String get perfect;

  /// No description provided for @collection.
  ///
  /// In en, this message translates to:
  /// **'Collection'**
  String get collection;

  /// No description provided for @best.
  ///
  /// In en, this message translates to:
  /// **'Best'**
  String get best;

  /// No description provided for @gadgetCollection.
  ///
  /// In en, this message translates to:
  /// **'Gadget Collection'**
  String get gadgetCollection;

  /// No description provided for @laptopCollection.
  ///
  /// In en, this message translates to:
  /// **'Laptop Collection'**
  String get laptopCollection;

  /// No description provided for @homeNeeds.
  ///
  /// In en, this message translates to:
  /// **'Home Needs'**
  String get homeNeeds;

  /// No description provided for @samsungTv.
  ///
  /// In en, this message translates to:
  /// **'Samsung TV'**
  String get samsungTv;

  /// No description provided for @samsungS25.
  ///
  /// In en, this message translates to:
  /// **'Samsung S25'**
  String get samsungS25;

  /// No description provided for @macbookAir.
  ///
  /// In en, this message translates to:
  /// **'MacBook Air'**
  String get macbookAir;

  /// No description provided for @lgSmartWM.
  ///
  /// In en, this message translates to:
  /// **'LG Smart WM'**
  String get lgSmartWM;

  /// No description provided for @appleProducts.
  ///
  /// In en, this message translates to:
  /// **'Apple Products'**
  String get appleProducts;

  /// No description provided for @googlePhones.
  ///
  /// In en, this message translates to:
  /// **'Google Phones'**
  String get googlePhones;

  /// No description provided for @soundcoreSpeakers.
  ///
  /// In en, this message translates to:
  /// **'Soundcore Speakers'**
  String get soundcoreSpeakers;

  /// No description provided for @smartWatches.
  ///
  /// In en, this message translates to:
  /// **'Smart Watches'**
  String get smartWatches;

  /// No description provided for @logitechOffers.
  ///
  /// In en, this message translates to:
  /// **'Logitech Offers'**
  String get logitechOffers;

  /// No description provided for @freeShippingGoogle.
  ///
  /// In en, this message translates to:
  /// **'Free Shipping for Google Phones today'**
  String get freeShippingGoogle;

  /// No description provided for @discountApple.
  ///
  /// In en, this message translates to:
  /// **'Get up to 20% off on Apple Products'**
  String get discountApple;

  /// No description provided for @saveSamsungWatches.
  ///
  /// In en, this message translates to:
  /// **'Save More with Samsung Watches'**
  String get saveSamsungWatches;

  /// No description provided for @buy2Get30.
  ///
  /// In en, this message translates to:
  /// **'Buy 2 Get 30% off the Third one'**
  String get buy2Get30;

  /// No description provided for @buy1Get1.
  ///
  /// In en, this message translates to:
  /// **'Buy 1 Get 1'**
  String get buy1Get1;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
