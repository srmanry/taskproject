import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart'as http;
import 'package:task_project/feature/home/model/prouct_model.dart';
import 'package:task_project/service/api_service.dart';

class ProductController extends GetxController{
  List <Product>productList = [];



  bool isLoading = false;
  Rx selectedIndex =0.obs;
  var count = 1.obs;

//ApiService homeService = ApiService();
  late ApiService apiService;
  @override
  void onInit() {
    // TODO: implement onInit
    apiService = ApiService();
    super.onInit();
    getAllProduct();
  }

  void getAllProduct ()async{
    try{
      isLoading =true;
      update();
      await apiService.getProducts();
      http.Response response = await apiService.getProducts();
      if(response.statusCode == 200){
      var data = jsonDecode(response.body);
        print(data);
        for(int i =0;i<data.length;i++){
          productList.add(Product.fromJson(data[i]));
          update();
          isLoading = false;
          update();
        }

      }
    }
    catch(e){print(e);}
  }

}