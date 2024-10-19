import 'package:data/src/source/article_data_source/article_ds.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ArticleRepository)
class ArticleRepositoryImpl implements ArticleRepository {
  ArticleRepositoryImpl({required this.articleDataSource});

  final ArticleDataSource articleDataSource;

  @override
  Future<Either<NetworkError, List<ArticleModel>>> getArticles() {
    throw UnimplementedError();
  }
}