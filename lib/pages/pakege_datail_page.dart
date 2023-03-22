import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PackageDetails extends StatelessWidget {
  const PackageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset('assets/images/Venues.jpg'),
          ),
          buttonArrow(context),
          scroll(),
        ],
      )),
    );
  }

  buttonArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
            clipBehavior: Clip.hardEdge,
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.white,
                  )),
            )),
      ),
    );
  }

  scroll() {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      maxChildSize: 1.0,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 35,
                      color: Colors.black12,
                    ),
                  ],
                ),
              ),
              Text('Details',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Package Name",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 16,
                  ),
                  Text(
                    ' KUWAIT',
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow[900],
                    size: 16,
                  ),
                  Text(
                    ' 5.0',
                  ),
                  Text(
                    ' • 68 Reviews',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  height: 4,
                ),
              ),
              Text("About", style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(
                height: 10,
              ),
              Text('Here is the description of the package',
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 10),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) => vednors(context),
              )
            ]),
          ),
        );
      },
    );
  }

  vednors(BuildContext context) {}
}
