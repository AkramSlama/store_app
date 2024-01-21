import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../models/update_product_request/update_product_request.dart';
import '../services/update_product_service.dart';

class UpdateProductPage extends StatefulWidget {
  static String id = 'update product';

  const UpdateProductPage({super.key});

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? desc, productName, image, price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const SizedBox(height: 100),
                CustomTextField(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: 'Product Name',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                    onChanged: (data) {
                      desc = data;
                    },
                    hintText: 'Description'),
                const SizedBox(height: 10),
                CustomTextField(
                    onChanged: (data) {
                      price = data;
                    },
                    inputType: TextInputType.number,
                    hintText: 'Price'),
                const SizedBox(height: 10),
                CustomTextField(
                    onChanged: (data) {
                      image = data;
                    },
                    hintText: 'image'),
                const SizedBox(height: 80),
                CustomButton(
                  text: 'Update',
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProduct(product);
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
      id: '1',
      request: UpdateProductRequest(
        title: 'lol',
        price: 50,
        description: 'jkhkefjk',
        image: 'jkbdf',
        category: 'dsakfn',
      ),
    );
  }
}
