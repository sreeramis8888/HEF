import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hef/src/data/constants/color_constants.dart';
import 'package:hef/src/data/models/user_model.dart';

class AwardCard extends StatelessWidget {
  final VoidCallback? onRemove;
  final Award award;

  const AwardCard({required this.onRemove, required this.award, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // Allow the card to shrink to fit its content
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // Upper part: Image fitted to the card
              Container(
                height: 115, // Height of the image section
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        award.image!), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
              ),
              if (onRemove != null)
                Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: GestureDetector(
                          onTap: () {
                            onRemove!();
                          },
                          child: SvgPicture.asset(
                              width: 16,
                              height: 16,
                              'assets/svg/icons/delete_account.svg')),
                    ),
                  ),
                ),
            ],
          ),
          // Lower part: Text
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                  color: kWhite),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    award.name ?? '',
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    award.authority ?? '',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
