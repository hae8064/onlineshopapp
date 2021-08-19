import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshopapp/constants.dart';
import 'package:onlineshopapp/details/body.dart';
import 'package:onlineshopapp/models/Product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //각각의 상품에 색깔을 맞추기 위함
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white,),
        onPressed: () {Navigator.pop(context);},
      ),
      actions: [
        IconButton(
          onPressed: () {}, icon: SvgPicture.asset("assets/icons/search.svg"),),
        IconButton(
          onPressed: () {}, icon: SvgPicture.asset("assets/icons/cart.svg"),),
        SizedBox(width: kDefaultPadding / 2,)
      ],
    );
  }
}
