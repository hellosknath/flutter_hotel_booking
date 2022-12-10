import 'package:flutter/material.dart';
import 'package:flutter_booking_app/utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({
    super.key,
    required this.firstTab,
    required this.secondTab,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(50),
            ),
            color: const Color(0xFFF4F6FD)),
        child: Row(
          children: [
            // Airline tickets
            Container(
              width: size.width * 0.44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(50)),
                ),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              child: Center(
                child: Text(firstTab),
              ),
            ),

            // hotels
            Container(
              width: size.width * 0.44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50)),
                ),
                color: Colors.transparent,
              ),
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
