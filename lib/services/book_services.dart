import 'package:dio/dio.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/services/client.dart';

//--------  This Is For Booking Vender Service ------------

class BookingServices {
  Future postBooking({required int book_id}) async {
    // we dont need list bec we are posting one item , were not reading
    try {
      final Response response =
          await Client.client.get('vendor/api/vendor/service/book/<int:id>');
      final List<dynamic> data = response.data;
    } catch (error) {
      print({"$error booking Faild"});
    }
    // return categories;
  }
}
