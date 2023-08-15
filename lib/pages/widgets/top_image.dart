import 'package:flutter/cupertino.dart';

import '../../constant/size.dart';

class TopImage extends StatelessWidget {
  final AssetImage image;
  final Widget? child;

  const TopImage({
    super.key,
    required this.image,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Util.width(context),
      height: Util.height(context) * 0.3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
