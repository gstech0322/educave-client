import 'package:flutter/material.dart';

import 'post_feature.dart';

class FeatureWidgetFactory extends StatelessWidget {
  final PostFeature _feature;

  const FeatureWidgetFactory(this._feature, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (_feature.type) {
      case 'text':
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: Text(_feature.content),
        );
      case 'image':
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: Image.network(_feature.content),
        );
      default:
        return const SizedBox();
    }
  }
}
