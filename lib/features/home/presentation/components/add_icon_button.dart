import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddIconButton extends StatelessWidget {
  const AddIconButton({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
    icon: SvgPicture.asset('assets/icons/add.svg'),
    color: Colors.white,
    onPressed: () {},
  );
}