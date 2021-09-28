import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lampa_test_task/entity/news/interface/i_news.dart';
import 'package:lampa_test_task/entity/news/regular_news/regular_news.dart';
import 'package:lampa_test_task/managers/hive_manager.dart';
import 'package:lampa_test_task/res/app_data.dart';
import 'package:lampa_test_task/ui/pages/home_page/widgets/child_age_widget.dart';
import 'package:intl/intl.dart' as intl;
import 'package:lampa_test_task/ui/pages/home_page/widgets/comment_card.dart';
import 'package:lampa_test_task/ui/pages/home_page/widgets/custom_animated_icon.dart';
import 'package:share/share.dart';

class RegularNewsWidget extends StatefulWidget {
  final RegularNews news;
  final void Function() favoriteFunction;
  final void Function() likeFunction;

  RegularNewsWidget({
    required this.news,
    required this.favoriteFunction,
    required this.likeFunction,
  });

  @override
  _RegularNewsWidgetState createState() => _RegularNewsWidgetState();
}

class _RegularNewsWidgetState extends State<RegularNewsWidget> with SingleTickerProviderStateMixin {
  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    final isLike =
        Hive.box<INews>(HiveBoxName.likes).values.any((element) => element.id == widget.news.id);
    final isFavorites = Hive.box<INews>(HiveBoxName.favorites)
        .values
        .any((element) => element.id == widget.news.id);
    return Container(
      color: AppData.colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: FadeInImage(
                  placeholder: AssetImage(AppData.images.emptyUser),
                  imageErrorBuilder: (context, error, stackTrace) =>
                      Image.asset(AppData.images.emptyUser),
                  image: NetworkImage(widget.news.user.image ?? ''),
                ),
              ),
              const SizedBox(width: 4.0),
              Text(
                widget.news.user.name,
                style: AppData.textStyle.ubuntuSemiBold,
              ),
              const SizedBox(width: 4.0),
              ...widget.news.user.childs.map((e) => ChildAgeWidget(child: e)).toList(),
            ],
          ),
          const SizedBox(height: 8.0),
          if (widget.news.image != null) Image.network(widget.news.image!),
          if (widget.news.image != null) const SizedBox(height: 8.0),
          Text(
            widget.news.title,
            style: AppData.textStyle.ubuntuBold.copyWith(
              color: AppData.colors.black,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 12.0),
          Text(
            widget.news.content,
            style: AppData.textStyle.ubuntuNormal.copyWith(
              color: AppData.colors.black,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 12.0),
          Row(
            children: [
              Text(
                intl.DateFormat.yMMMMd('ru').format(widget.news.postTime),
                style: AppData.textStyle.ubuntuLight.copyWith(color: AppData.colors.grey),
              ),
              const Spacer(),
              Icon(Icons.arrow_forward_outlined, size: 20, color: AppData.colors.grey),
              const SizedBox(width: 4.0),
              Text(
                widget.news.theme.name,
                style: AppData.textStyle.ubuntuLight.copyWith(color: AppData.colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          SizedBox(
            height: 40,
            child: Row(
              children: [
                CustomAnimateIcon(
                  child: isLike ? Icons.favorite : Icons.favorite_border,
                  color: isLike ? AppData.colors.pink : AppData.colors.grey,
                  onTap: () => widget.likeFunction(),
                ),
                const SizedBox(width: 4.0),
                Text(
                  (widget.news.likes + (isLike ? 1 : 0)).toString(),
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
                  child: isFavorites ? Icons.star : Icons.star_border,
                  color: isFavorites ? AppData.colors.orange : AppData.colors.grey,
                  onTap: () => widget.favoriteFunction(),
                ),
              ],
            ),
          ),
          AnimatedSize(
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
      ),
    );
  }
}
