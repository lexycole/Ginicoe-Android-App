import 'package:flutter/material.dart';
import './constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      // decoration: const BoxDecoration(
      //   color: primaryColor,
      //   // borderRadius: BorderRadius.all(Radius.circular(10)),
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Ginicoe User Chart",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title:"Main Contact",
            amountOfFiles: "2.0GB",
            numOfFiles: 140,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Consumers",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Bank",
            amountOfFiles: "1.0GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Education",
            amountOfFiles: "900MB",
            numOfFiles: 1200,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Government",
            amountOfFiles: "900MB",
            numOfFiles: 140,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Health Care",
            amountOfFiles: "500MB",
            numOfFiles: 240,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Merchants",
            amountOfFiles: "300MB",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}