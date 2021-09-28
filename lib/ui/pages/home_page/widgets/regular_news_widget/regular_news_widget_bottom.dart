import 'package:flutter/material.dart';
import 'package:lampa_test_task/entity/news/regular_news/regular_news.dart';
import 'package:lampa_test_task/res/app_data.dart';
import 'package:lampa_test_task/ui/pages/home_page/widgets/comment_card.dart';
import 'package:lampa_test_task/ui/pages/home_page/widgets/custom_animated_icon.dart';
import 'package:share/share.dart';

class RegularNewsWidgetBottom extends StatefulWidget {
  final RegularNews news;
  final bool isLike;
  final bool isFavorites;
  final void Function() likeFunction;
  final void Function() favoriteFunction;

  RegularNewsWidgetBottom({
    required this.news,
    required this.isLike,
    required this.isFavorites,
    required this.likeFunction,
    required this.favoriteFunction,
  });

  @override
  _RegularNewsWidgetBottomState createState() => _RegularNewsWidgetBottomState();
}

class _RegularNewsWidgetBottomState extends State<RegularNewsWidgetBottom>
    with SingleTickerProviderStateMixin {
  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: Row(
            children: [
              CustomAnimateIcon(
                child: widget.isLike ? Icons.favorite : Icons.favorite_border,
                color: widget.isLike ? AppData.colors.pink : AppData.colors.grey,
                onTap: () => widget.likeFunction(),
              ),
              const SizedBox(width: 4.0),
              Text(
                (widget.news.likes + (widget.isLike ? 1 : 0)).toString(),
                style: AppData.textStyle.ubuntuLight.copyWith(color: AppData.colors.grey),
              ),
              const SizedBox(width: 16.0),
              CustomAnimateIcon(
                onTap: () => setState(() => _isOpen = !_isOpen),
                child: _isOpen && widget.news.comments.length > 0
                    ? Icons.mode_comment
                    : Icons.mode_comment_outlined,
                color: _isOpen && widget.news.comments.length > 0
                    ? AppData.colors.teal
                    : AppData.colors.grey,
              ),
              const SizedBox(width: 4.0),
              Text(
                widget.news.comments.length.toString(),
                style: AppData.textStyle.ubuntuLight.copyWith(color: AppData.colors.grey),
              ),
              const SizedBox(width: 16.0),
              IconButton(
                onPressed: () => Share.share(
                  widget.news.title,
                  subject: widget.news.content,
                ),
                icon: Icon(Icons.share_outlined, size: 25, color: AppData.colors.grey),
              ),
              const Spacer(),
              CustomAnimateIcon(
                child: widget.isFavorites ? Icons.star : Icons.star_border,
                color: widget.isFavorites ? AppData.colors.orange : AppData.colors.grey,
                onTap: () => widget.favoriteFunction(),
              ),
            ],
          ),
        ),
        AnimatedSize(
          alignment: Alignment.topCenter,
          duration: const Duration(milliseconds: 600),
          child: SizedBox(
            height: _isOpen ? null : 0,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CommentCard(comment: widget.news.comments[index]);
              },
              itemCount: widget.news.comments.length,
            ),
          ),
        ),
      ],
    );
  }
}
