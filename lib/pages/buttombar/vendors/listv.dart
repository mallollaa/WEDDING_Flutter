import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wedding/providers/category_provider.dart';
import 'package:wedding/providers/vender_services_provider.dart';
import 'package:wedding/widgets/vendor_card.dart';

class ListVendor extends StatelessWidget {
  const ListVendor({Key? key}) : super(key: key);

  Widget _getVendor(BuildContext context) {
    if (context.watch<ServicesItemProvider>().services.isEmpty) {
      context.read<ServicesItemProvider>().getServices();
    }
    return CircularProgressIndicator();
  }

  Widget _buildVendorList(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: context.watch<ServicesItemProvider>().services.length,
      itemBuilder: (context, index) {
        final service = context.watch<ServicesItemProvider>().services[index];
        return VendorCard(
          title: service.title,
          price: service.price,
          vendors: service.vendors!,
          description: service.description,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff705B67),
        title: Row(
          children: [
            Text(
              'Vendors',
              style: GoogleFonts.commissioner(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xfff705B67),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffDAD6D6),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 35),
                      Container(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: Row(
                          children: [
                            Text(
                              'Vendors',
                              style: GoogleFonts.commissioner(
                                fontSize: 24,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: context
                                .watch<ServicesItemProvider>()
                                .services
                                .isNotEmpty
                            ? _buildVendorList(context)
                            : _getVendor(context),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
