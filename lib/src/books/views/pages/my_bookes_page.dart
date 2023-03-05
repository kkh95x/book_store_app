import 'package:book_store/src/books/controllers/bookes_controllers.dart';
import 'package:book_store/src/books/views/widgets/my_book_card_widget.dart';
import 'package:book_store/src/core/application/color_manager.dart';
import 'package:book_store/src/core/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class MyBookesPage extends StatelessWidget {
  const MyBookesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          children: const [
            Icon(Icons.book_outlined, color: AppColor.green, size: 50),
            CustomTextWidget(
              "كتبي",
              color: AppColor.green,
              fontSize: 30,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: AppColor.green,
          indent: 20,
          endIndent: 20,
          thickness: 2.0,
        ),
        Expanded(
            child: FutureBuilder(
          future: Future.delayed(const Duration(seconds: 1), () => true),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColor.green,
                ),
              );
            } else if (snapshot.hasData) {
              return GridView.builder(
                itemCount: data.length,
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final book = data[index];
                  return MyBookCartWidget(
                      author: book.author ?? "لايوجد مالك",
                      imageUrl: book.imageUrl ?? "assets/book.png",
                      isLiked: false,
                      prise: book.price ?? 0.0,
                      nameBook: book.name ?? "غيرمعروف");
                },
              );
            } else {
              return const SizedBox();
            }
          },
        ))
      ],
    ));
  }
}
