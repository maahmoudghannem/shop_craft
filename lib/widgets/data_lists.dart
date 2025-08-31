// offers item list

import 'package:shop_craft_app/l10n/app_localizations.dart';
import 'package:shop_craft_app/main.dart';

// localized_collections.dart

List<Map<String, String>> getLocalizedCollection(AppLocalizations loc) => [
  {
    "image": "assets/images/s25.webp",
    "title": loc.samsungS25,
    "price": "1,049.99",
  },
  {
    "image": "assets/images/samsung-65-inch-qef1-qled-4k-smart-tv.jpg",
    "title": loc.samsungTv,
    "price": "1,399",
  },
  {"image": "assets/images/lg.avif", "title": loc.lgSmartWM, "price": "2000"},
  {
    "image": "assets/images/mackbook air.jpg",
    "title": loc.macbookAir,
    "price": "789",
  },
];

List<Map<String, String>> getLocalizedOffers(AppLocalizations loc) => [
  {
    "image": "assets/images/pixel 9.jpg",
    "title": loc.googlePhones,
    "description": loc.freeShippingGoogle,
  },
  {
    "image": "assets/images/mackbook pro.jpg",
    "title": loc.appleProducts,
    "description": loc.discountApple,
  },
  {
    "image": "assets/images/anker-soundcore-boom-3i.webp",
    "title": loc.soundcoreSpeakers,
    "description": loc.buy2Get30,
  },
  {
    "image": "assets/images/galaxy watch.jpg",
    "title": loc.smartWatches,
    "description": loc.saveSamsungWatches,
  },

  {
    "image": "assets/images/logitech.jpg",
    "title": loc.logitechOffers,
    "description": loc.buy1Get1,
  },
];

List<Map<String, String>> getLocalizedImages({AppLocalizations? loc}) => [
  {
    "image": "assets/images/gadgets.jpeg",
    "title": isEnglish ? loc!.perfect : loc!.collection,
    "subTitle": loc.gadgetCollection,
  },
  {
    "image": "assets/images/laptops collection.jpg",
    "title": isEnglish ? loc.premium : loc.collection,
    "subTitle": loc.laptopCollection,
  },
  {
    "image": "assets/images/home needs.jpg",
    "title": loc.best,
    "subTitle": loc.homeNeeds,
  },
];
