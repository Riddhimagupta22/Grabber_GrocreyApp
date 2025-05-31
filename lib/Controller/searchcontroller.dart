import 'package:get/get.dart';
import 'package:grabber/Model/product.dart';

class SearchController extends GetxController{
  RxString _searchText = ''.obs;
  var products = <Product>[].obs;
  List<Product> get productList => products;

}