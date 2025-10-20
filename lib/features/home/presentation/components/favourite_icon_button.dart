import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteIconButton extends StatelessWidget {
  const FavouriteIconButton({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
    icon: SvgPicture.asset('assets/icons/favourite.svg'),
    onPressed: () {},
  );
}