import 'package:flutter/cupertino.dart';
import 'package:wedding/models/booking.dart';
import 'package:wedding/models/categories.dart';
import 'package:wedding/services/book_services.dart';
import 'package:wedding/services/category_services.dart';

class BookingProvider with ChangeNotifier {
  // Actions
  final bookingServices = BookingServices();

  Future<Booking> postBooking({required int book_id}) async {
    final Booking booking = await bookingServices.postBooking(book_id: book_id);

    print("provider $booking");
    // notifyListeners();
    return booking;
  }
}
