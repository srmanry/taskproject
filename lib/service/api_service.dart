
import 'package:http/http.dart' as http;

class ApiService{


  Future<http.Response> getProducts()async{
    String url = "https://fakestoreapi.com/products";
    http.Response  getData = await http.get(Uri.parse(url));

    return getData;

  }

  Future<http.Response> getCategories()async{
    String categoriesUrl = "https://fakestoreapi.com/products/categories";
    http.Response categoriesResponse =await http.get(Uri.parse(categoriesUrl));
    return categoriesResponse;
  }

  Future<http.Response> getProductByCategories(String categorise)async{
    String byCategoriseUrl = "https://fakestoreapi.com/products/category/${categorise}";
    http.Response byCategoriesResponse = await http.get(Uri.parse(byCategoriseUrl));
    return byCategoriesResponse;
  }



/*
// Fetch function
  void gtProducts() async {
    final url = Uri.parse('https://fakestoreapi.com/products');

    try {
      final response = await http.get(url);


    } catch (e) {
      throw Exception('Error fetching products: $e');}
    }
*/


}
