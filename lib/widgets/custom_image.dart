import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.image,
    this.isNetwork = false,
    this.height = 150,
    this.width = 180,
    this.borderRadius = 24,
    this.fit = BoxFit.cover,
  });

  final String image;
  final bool isNetwork;
  final double height;
  final double width;
  final double borderRadius;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return isNetwork
        ? CachedNetworkImage(
            imageUrl: image,
            width: width,
            height: height,
            fit: fit,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )
        : Image.asset(image, width: width, height: height, fit: fit);
  }
}
