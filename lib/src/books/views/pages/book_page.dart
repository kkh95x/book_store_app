import 'package:book_store/src/books/models/bookes_model.dart';
import 'package:book_store/src/core/application/color_manager.dart';
import 'package:book_store/src/core/views/widgets/custom_button_widget.dart';
import 'package:book_store/src/core/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';


class BookPage extends StatelessWidget {
  const BookPage({super.key, required this.bookeModel});
  static String get route => "book";
  final BookeModel bookeModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: AppColor.green,
          
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: CustomTextWidget(
          bookeModel.name ?? "",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColor.green,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          Expanded(
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 9,
              child: Image.asset(
                bookeModel.imageUrl ?? "assets/book.png",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
                    const SizedBox(height: 10,),

          Expanded(
              flex: 2,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: const BoxDecoration(
                    color: Color(0xffE2E5EC),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _getRowText(),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomTextWidget(
                                ": ${bookeModel.author!}",
                                color: AppColor.green,
                                fontSize: 18,
                              ),
                              CustomTextWidget(
                                ": ${bookeModel.section!}",
                                color: AppColor.green,
                                fontSize: 18,
                              ),
                              CustomTextWidget(
                                ": ${bookeModel.language!}",
                                color: AppColor.green,
                                fontSize: 18,
                              ),
                              CustomTextWidget(
                                ": ${bookeModel.releaseDate!.year} - ${bookeModel.releaseDate!.month} - ${bookeModel.releaseDate!.day}",
                                color: AppColor.green,
                                fontSize: 18,
                              ),
                              CustomTextWidget(
                                ": ${bookeModel.pages!.toString()}",
                                color: AppColor.green,
                                fontSize: 18,
                              ),
                              CustomTextWidget(
                                ": ${bookeModel.fileSize!}",
                                color: AppColor.green,
                                fontSize: 18,
                              ),
                              CustomTextWidget(
                               ": ${bookeModel.price!.toString()}",
                                color: AppColor.green,
                                fontSize: 18,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        CustomButtonWidget(name: "???????? ????????????",onPressed: () {
                          
                        },),
                         CustomButtonWidget(name: "?????????? ?????? ??????????",onPressed: () {
                          
                        },),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Column _getRowText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const[
        CustomTextWidget(
          "????????????",
          fontSize: 18,
        ),
        CustomTextWidget(
          "??????????",
          fontSize: 18,
        ),
        CustomTextWidget(
          "??????????",
          fontSize: 18,
        ),
        CustomTextWidget(
          "?????????? ??????????????",
          fontSize: 18,
        ),
        CustomTextWidget(
          "??????????????",
          fontSize: 18,
        ),
        CustomTextWidget(
          "?????? ??????????",
          fontSize: 18,
        ),
        CustomTextWidget(
          "??????????",
          fontSize: 18,
        ),
      ],
    );
  }
}
