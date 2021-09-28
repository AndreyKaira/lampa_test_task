
import 'package:lampa_test_task/entity/enums/type_news_enum.dart';
import 'package:lampa_test_task/entity/theme/theme.dart';


abstract class INews {
  final String id;
  final Theme theme;
  final TypeNews type;

  INews({
    required this.id,
    required this.theme,
    required this.type,
  });
}
