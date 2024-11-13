import 'package:flutter/widgets.dart';
import '../models/products_model.dart';
import '../services/products_service.dart';

class ProductsProvider extends ChangeNotifier{
  ProductModel? productModel;

  Future<void> fetchData() async{
    productModel = await ProductsService.getData();
    notifyListeners();
  }
}