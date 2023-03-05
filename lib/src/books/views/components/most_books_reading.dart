import 'package:book_store/src/books/controllers/bookes_controllers.dart';
import 'package:book_store/src/books/views/pages/book_page.dart';
import 'package:book_store/src/books/views/widgets/book_card_widget.dart';
import 'package:book_store/src/core/application/color_manager.dart';
import 'package:flutter/material.dart';

class MostBookesreadingComponent extends StatelessWidget {
  const MostBookesreadingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 1), () => true),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(color: AppColor.green),
          );
        }
        if (snapshot.hasData) {
          return GridView.builder(
            padding: const EdgeInsets.symmetric(vertical: 10),
            itemCount: data.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.8,
                crossAxisSpacing: 10, mainAxisSpacing: 20, crossAxisCount: 2),
            itemBuilder: (context, index) {
              final book = data[index];
              return BookeCard(
                onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BookPage(bookeModel: data[index]),
                    ));
                  },
                  bookName: book.name ?? "",
                  imageUrl: book.imageUrl ?? "",
                  isLiked: true);
            },
          );
        } else {
          return const Center(
            child: Icon(Icons.error),
          );
        }
      },
    );
  }
}
