import 'package:api_integration/service/api.dart';
import 'package:api_integration/service/api_service.dart';
import 'package:flutter/material.dart';

class image_page extends StatelessWidget {
  image_page({Key? key}) : super(key: key);

  final Future<ApiService> _sanp = API_service().get_data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FutureBuilder<ApiService>(
            future: _sanp,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.network(
                          snapshot.data!.message,
                          fit: BoxFit.cover,
                        )),
                  ),
                );
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
