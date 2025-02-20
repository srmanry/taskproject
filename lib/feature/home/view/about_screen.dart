


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_project/feature/home/controller/home_controller.dart';
import 'package:task_project/feature/home/model/prouct_model.dart';
import 'package:task_project/util/dimensions.dart';
import 'package:task_project/util/style.dart';

class ProductDetailsScreenView extends StatelessWidget {
  final Product product;

  ProductDetailsScreenView(this.product);

  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyan,
        title: Text("About",style: textMedium.copyWith(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.fifTeen),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding( padding: const EdgeInsets.all(8.0),
              child: Column(children: [


                        ClipRRect(borderRadius: BorderRadius.circular(Dimensions.defaultSize),
                        child: Image.network(product.image,height: 120.h,width: double.infinity,)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
              child: Text(product.title,style: textSemiBold.copyWith(fontSize: 24),),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Price : ${product.price} \$",style: textMedium.copyWith(fontSize: 16.sp),),
                Row(children: [
                   Icon(Icons.star_rate,color: Colors.red,size: 30,),
                  const SizedBox(width: 5.0,),
                  Text(product.rating.rate.toString(),style: textMedium.copyWith(fontSize: 24),)
                ],),
              ],
            ),
            const SizedBox(height: Dimensions.defaultSize,),
            Text("Description",style: textSemiBold.copyWith(fontSize: 14.sp),),
            Text(product.description,style:textRegular.copyWith(fontSize: 12.sp),),
            const SizedBox(height: Dimensions.defaultSize,),
            Text("Stock",style: textSemiBold.copyWith(fontSize: 12.sp),),
            Text(product.rating.count.toString(),style:textRegular.copyWith(fontSize: 12.sp),),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton:


 /*     InkWell(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.defaultSize),
          child: Container(
              width: double.infinity,
              height: 40.h,
              decoration: BoxDecoration(   color: Colors.cyan,borderRadius: BorderRadius.circular(Dimensions.defaultSize)),
              child: Center(child: Text("Add to cart",style:textRegular.copyWith(fontSize: 14.sp,color: Colors.white)))),
        ),
        onTap: (){
        },
      ),*/


    );

  }}
