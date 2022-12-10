import 'package:flutter/material.dart';
import 'package:flutter_booking_app/utils/app_layout.dart';
import 'package:flutter_booking_app/utils/app_styles.dart';
import 'package:flutter_booking_app/widget/column_layout.dart';
import 'package:flutter_booking_app/widget/layout_builder_widget.dart';
import 'package:flutter_booking_app/widget/thick_container.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({
    super.key,
    required this.ticket,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.75,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 162 : 163),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* showing the blue part of the card */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  // ticket upper row
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle3,
                      ),
                      const Spacer(),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: const AppLayoutBuilderWidget(
                                sections: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : const Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(
                        isColor: true,
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  // ticker 2nd row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle4.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle4.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle4,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /** showing the orange part of the card/ticket */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                              bottomRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                            ))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(12)),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: AppLayout.getWidth(5),
                                height: AppLayout.getHeight(1),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: isColor == null
                                        ? Colors.white
                                        : Colors.grey.shade300,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /*
             Bottom part of the orange card/ticket
             */
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(16),
                top: AppLayout.getHeight(10),
                right: AppLayout.getHeight(16),
                bottom: AppLayout.getHeight(16),
              ),
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                      isColor == null ? AppLayout.getHeight(21) : 0),
                  bottomRight: Radius.circular(
                      isColor == null ? AppLayout.getHeight(21) : 0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['date'],
                        secondText: 'Date',
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['departure_time'],
                        secondText: 'Departure Time',
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondText: 'Number',
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
