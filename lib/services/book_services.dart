import 'package:dio/dio.dart';
import 'package:wedding/models/booking.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/services/client.dart';

//--------  This Is For Booking Vender Service ------------

class BookingServices {
  Future<Booking> postBooking({required int book_id}) async {
    late Booking book;
    // we dont need list bec we are posting one item , were not reading
    try {
      final Response response = await Client.client
          .post('vendor/api/vendor/service/book/<int:id>'); // check
      book = Booking.fromJson(response.data);
      print(book);
    } catch (error) {
      print({"$error booking Faild"});
    }
    return book;
  }

  Future<Booking> getBooking({required int book_id}) async {
    late Booking book;
    // we dont need list bec we are posting one item , were not reading
    try {
      final Response response = await Client.client
          .get('vendor/api/vendor/service/book/<int:id>'); // check
      book = Booking.fromJson(response.data);
      print(book);
    } catch (error) {
      print({"$error booking Faild"});
    }
    return book;
  }
}
