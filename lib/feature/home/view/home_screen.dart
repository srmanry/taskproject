

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/feature/home/controller/home_controller.dart';
import 'package:task_project/feature/home/model/prouct_model.dart';
import 'package:task_project/util/dimensions.dart';




class HomeScreenView extends StatelessWidget {
  HomeScreenView({super.key});
  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Project"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: Column(
          children: [
            Expanded(
              child: GetBuilder<ProductController>(builder: (_){
                return productController.isLoading ? Center(child: const CircularProgressIndicator()): GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5),
                 //   itemCount: (productController.productList.length??0)<=6?6:productController.productList.length,

                    itemCount: productController.productList.length > 6
                        ? 6
                        : productController.productList.length,

                    itemBuilder: (_,index){

                      Product getProduct = productController.productList[index];
                      return InkWell(
                        onTap: (){

                        },
                        child: Card(
                          child:   Padding(
                            padding: const EdgeInsets.all(Dimensions.defaultSize),
                            child: Column(
                              children: [
                                Image.network(getProduct.image,fit: BoxFit.fill,height: 180,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
                                  child: Text(getProduct.title,overflow: TextOverflow.ellipsis,),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text( "Price :${getProduct.price.toString()}" ),
                                    Row(
                                      children: [
                                        const Icon(Icons.star_rate,color: Colors.red,),
                                        Text(getProduct.rating.rate.toString()),
                                      ],
                                    ),
                                  ],),

                              ],
                            ),
                          ),
                        ),
                      );
                    });




              }),
            ),
          ],
        ),
      ),
    );}}

