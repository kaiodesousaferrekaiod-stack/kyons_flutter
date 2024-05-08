import 'package:shared_package/shared_libs.dart';

import '../../core/data/api.dart';
import '../../core/data/shared.dart';
import '../data/knowledge_service.dart';

final knowledgeApiProvider = Provider<KnowledgeApi>(
  (ref) => KnowledgeApi(apiService: Api.init(ref.read(sharedRef), Dio())),
);
