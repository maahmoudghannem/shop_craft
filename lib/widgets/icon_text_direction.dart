import 'package:flutter/material.dart';
import 'package:shop_craft_app/l10n/app_localizations.dart';
import 'package:shop_craft_app/main.dart';
import 'package:shop_craft_app/widgets/custom_icon.dart';
import 'package:shop_craft_app/widgets/custom_text.dart';

class EngIcon extends StatelessWidget {
  const EngIcon({super.key, required this.loc});

  final AppLocalizations loc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: loc.language,
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(width: 3),
        CustomIcon(
          icon: Icons.language_rounded,
          onTap: () => ShopCraft.of(context)!.changeLan(),
        ),
      ],
    );
  }
}

class ArIcon extends StatelessWidget {
  const ArIcon({super.key, required this.loc});
  final AppLocalizations loc;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(
          icon: Icons.language_rounded,
          onTap: () => ShopCraft.of(context)!.changeLan(),
        ),
        const SizedBox(width: 3),
        CustomText(
          text: loc.language,
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}
