import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:nepaldetials/model/model.dart';

class RemoteService {
  static const Client = http.Client;
//method
  static Future<List<DistrictModel>?> fetchDistrict() async {
    try {
      var response = await http
          .get(Uri.parse("https://data.askbhunte.com/api/v1/districts"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return districtModelFromJson(jsonString);
      } else {
        return null;
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    }
  }
}
