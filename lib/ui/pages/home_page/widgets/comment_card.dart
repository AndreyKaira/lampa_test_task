import 'package:flutter/material.dart';
import 'package:lampa_test_task/entity/comment/comment.dart';
import 'package:lampa_test_task/res/app_data.dart';

class CommentCard extends StatelessWidget {
  final Comment comment;

  CommentCard({required this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.all(12.0),
      decoration:
          BoxDecoration(color: AppData.colors.teal, borderRadius: BorderRadius.circular(12.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: FadeInImage(
              placeholder: AssetImage(AppData.images.emptyUser),
              imageErrorBuilder: (context, error, stackTrace) =>
                  Image.asset(AppData.images.emptyUser),
              image: NetworkImage(comment.user.image ?? ''),
            ),
          ),
          const SizedBox(width: 8.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comment.user.name,
                  style: AppData.textStyle.ubuntuSemiBold.copyWith(color: AppData.colors.white),
                ),
                const SizedBox(height: 8.0),
                Text(
                  comment.content,
                  style: AppData.textStyle.ubuntuNormal.copyWith(color: AppData.colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
