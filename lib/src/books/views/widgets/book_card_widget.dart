import 'package:book_store/src/core/application/color_manager.dart';
import 'package:book_store/src/core/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class BookeCard extends StatelessWidget {
  const BookeCard(
      {super.key,
      this.onTap,
      required this.bookName,
      required this.imageUrl,
      required this.isLiked});
  final String imageUrl;
  final String bookName;
  final bool isLiked;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 9,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: 80,
                  height: 150,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: const Color(0xffE2E5EC),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextWidget(bookName),
                        Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: isLiked ? AppColor.green : Colors.white,
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.heart_broken_outlined,
                              color: isLiked ? Colors.white : AppColor.green,
                              size: 30,
                            )),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
