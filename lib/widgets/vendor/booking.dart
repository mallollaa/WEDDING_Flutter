import 'package:flutter/material.dart';

class BookingRow extends StatelessWidget {
  const BookingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 22, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text("Book "),
          ),
        ],
      ),
    );
  }
}
