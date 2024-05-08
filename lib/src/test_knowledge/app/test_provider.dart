import 'package:shared_package/shared_libs.dart';

import '../../../boostrap/config_reader.dart';
import '../../core/data/api.dart';
import '../../core/data/shared.dart';
import '../../test_knowledge/data/test_knowledge_api.dart';

final testApi = Provider<TestKnowledge>(
  (ref) => TestKnowledge(apiService: Api.init(ref.read(sharedRef), Dio()), hostName: ConfigReader.serverApi()),
);

enum QuestionViewType { question, result }
