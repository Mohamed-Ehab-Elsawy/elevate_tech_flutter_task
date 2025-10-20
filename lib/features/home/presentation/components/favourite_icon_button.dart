import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteIconButton extends StatelessWidget {
  const FavouriteIconButton({super.key});

  @override
  Widget build(BuildContext context) =>  GestureDetector(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: SvgPicture.asset('assets/icons/favourite.svg'),
    ),
  );
}