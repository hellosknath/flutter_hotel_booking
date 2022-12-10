import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_booking_app/screens/ticket_view.dart';
import 'package:flutter_booking_app/utils/app_info_list.dart';
import 'package:flutter_booking_app/utils/app_layout.dart';
import 'package:flutter_booking_app/utils/app_styles.dart';
import 'package:flutter_booking_app/widget/column_layout.dart';
import 'package:flutter_booking_app/widget/layout_builder_widget.dart';
import 'package:flutter_booking_app/widget/ticket_tabs.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'Tickets',
                style: Styles.headLineStyle,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(height: 1),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(20)),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: '5221 347574',
                          secondText: 'passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: '232445 453755785',
                          secondText: 'Number of E-Tickets',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: 'B2SG28',
                          secondText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' *** 2473',
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'Payment method',
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: '\$242.33',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /* draw bar code */
              const SizedBox(height: 1),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                  ),
                  color: Colors.white,
                ),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https//github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
