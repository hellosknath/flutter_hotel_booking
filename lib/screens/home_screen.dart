import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_booking_app/screens/hotel_screen.dart';
import 'package:flutter_booking_app/screens/ticket_view.dart';
import 'package:flutter_booking_app/utils/app_info_list.dart';
import 'package:flutter_booking_app/utils/app_layout.dart';
import 'package:flutter_booking_app/utils/app_styles.dart';
import 'package:flutter_booking_app/widget/double_text_widget.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(20)),
                // Heading
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Book ticket',
                          style: Styles.headLineStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/images/img_1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                // search bar
                Gap(AppLayout.getHeight(25)),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(12),
                      vertical: AppLayout.getHeight(12)),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                // heading
                const AppDoubleTextWidget(
                  bigTxt: 'Upcoming Flights',
                  smallTxt: 'View all',
                ),

                // ticket view
                Gap(AppLayout.getHeight(15)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
                  child: Row(
                    children: ticketList
                        .map(
                          (singleTicket) => TicketView(ticket: singleTicket),
                        )
                        .toList(),
                  ),
                ),
                Gap(AppLayout.getHeight(15)),

                /**
                 *  hotel view
                 */
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
                  child: const AppDoubleTextWidget(
                    bigTxt: 'Hotels',
                    smallTxt: 'View All',
                  ),
                ),
                Gap(AppLayout.getHeight(15)),
                // hotel screen
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
                  child: Row(
                    children: hotelList
                        .map(
                          (singleHotel) => HotelScreen(
                            hotel: singleHotel,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Emergency leave neowar somoy surhid vaiya or others kaowk ba kono important
// project er kaj takle leave nischen j ayta akto notify kore diyen...