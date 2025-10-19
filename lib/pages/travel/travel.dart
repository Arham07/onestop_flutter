import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:onestop_dev/stores/mapbox_store.dart';
import 'package:onestop_dev/widgets/mapbox/map_box.dart';
import 'package:onestop_dev/widgets/travel/ferry_details.dart';
import 'package:onestop_dev/widgets/travel/next_time_card.dart';
import 'package:onestop_dev/widgets/travel/stops_bus_details.dart';
import 'package:onestop_kit/onestop_kit.dart';
import 'package:provider/provider.dart';

import '../../globals/my_colors.dart';
import '../../globals/my_fonts.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({super.key});

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  int selectBusesOrStops = 0;

  @override
  Widget build(BuildContext context) {
    var mapStore = context.read<MapBoxStore>();
    mapStore.checkTravelPage(true);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Travel', style: MyFonts.w600.size(24)),
              const SizedBox(width: 16),
              Text(
                'Monday, 16th June',
                style: MyFonts.w600.size(16).setColor(kDarkGreen),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.bell, size: 32, color: kDarkGreen),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kWhite,
              border: Border.all(color: kFontGrey),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: kDarkGreen.withAlpha(30),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/images/bus.png'),
                    ),
                    SizedBox(width: 8),
                    Text('Bus', style: MyFonts.w600.size(16)),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 16),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text('IIT', style: MyFonts.w600.size(16)),
                    SizedBox(width: 8),

                    Icon(Icons.arrow_forward, size: 14),
                    SizedBox(width: 8),
                    Text('City', style: MyFonts.w600.size(16)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: kBusStopTimeTile('tic bus stop', '54', kDarkGreen),
                ),
                Divider(),
                SizedBox(height: 12),
                Row(
                  children: [
                    Text('City', style: MyFonts.w600.size(16)),
                    SizedBox(width: 8),

                    Icon(Icons.arrow_forward, size: 14),
                    SizedBox(width: 8),
                    Text('IIT', style: MyFonts.w600.size(16)),
                  ],
                ),
                SizedBox(height: 14),
                kBusStopTimeTile('Nehru park', '5', kRed),
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kWhite,
              border: Border.all(color: kFontGrey),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: kDarkGreen.withAlpha(30),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/images/ship.png'),
                    ),
                    SizedBox(width: 8),
                    Text('Ferry', style: MyFonts.w600.size(16)),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 16),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text('IIT', style: MyFonts.w600.size(16)),
                    SizedBox(width: 8),

                    Icon(Icons.arrow_forward, size: 14),
                    SizedBox(width: 8),
                    Text('City', style: MyFonts.w600.size(16)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Column(
                    children: [
                      kBusStopTimeTile('tic bus stop', '24', kDarkGreen),
                      kBusStopTimeTile('Madhyamkhanda', '4', kRed),
                      kBusStopTimeTile('Rajadwar', '15', kYellowDullColor),
                    ],
                  ),
                ),
                Divider(),
                SizedBox(height: 12),
                Row(
                  children: [
                    Text('City', style: MyFonts.w600.size(16)),
                    SizedBox(width: 8),

                    Icon(Icons.arrow_forward, size: 14),
                    SizedBox(width: 8),
                    Text('IIT', style: MyFonts.w600.size(16)),
                  ],
                ),
                SizedBox(height: 14),
                kBusStopTimeTile('tic bus stop', '24', kRed),
                kBusStopTimeTile('Madhyamkhanda', '4', kDarkGreen),
                kBusStopTimeTile('Rajadwar', '15', kDarkGreen),
              ],
            ),
          ),
          const SizedBox(height: 50),

          Text('More Travel Options', style: MyFonts.w600.size(24)),
          const SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kWhite,
              border: Border.all(color: kFontGrey),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/avatars.png'),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 18),
                  ],
                ),
                SizedBox(height: 8),
                Text('Administration', style: MyFonts.w600.size(16)),
              ],
            ),
          ),
          const SizedBox(height: 16),

          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kWhite,
              border: Border.all(color: kFontGrey),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/book.png'),
                    SizedBox(width: 8),
                    Text('Travel Guide', style: MyFonts.w600.size(16)),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 18),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'A quick guide to common travel methods, fares, and essential info.',
                  style: MyFonts.w500.size(14).setColor(kGrey7),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kWhite,
              border: Border.all(color: kFontGrey),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/car.png'),
                    SizedBox(width: 8),
                    Text('Cab Sharing', style: MyFonts.w600.size(16)),
                    Spacer(),
                    Transform.rotate(
                      angle: 320 * 3.1415927 / 180,
                      child: Icon(Icons.arrow_forward, size: 18),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Connect with fellow students for shared cab rides.',
                  style: MyFonts.w500.size(14).setColor(kGrey7),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),

          // const SizedBox(height: 10),
          // const MapBox(),
          // const SizedBox(height: 10),
          // const NextTimeCard(),
          // const SizedBox(height: 10),
          // Observer(
          //   builder: (context) {
          //     return (mapStore.indexBusesorFerry == 0)
          //         ? const StopsBusDetails()
          //         : const FerryDetails();
          //   },
          // )
        ],
      ),
    );
  }

  Row kBusStopTimeTile(
      final String busStop,
      final String time,
      final Color color,
      ) {
    return Row(
      children: [
        Text(
          busStop.toUpperCase(),
          style: MyFonts.w500.size(14).setColor(kGrey7),
        ),
        Spacer(),
        Text('In', style: MyFonts.w500.size(14)),
        SizedBox(width: 6),
        Text('$time mins', style: MyFonts.w500.size(14).setColor(color)),
      ],
    );
  }
}
