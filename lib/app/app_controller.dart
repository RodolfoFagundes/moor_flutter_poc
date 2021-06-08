import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'shared/models/configuracao_model.dart';

part 'app_controller.g.dart';

@Injectable()
class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  ConfiguracaoModel configuracaoModel;

  @action
  void setConfiguracaoModel(ConfiguracaoModel value) =>
      configuracaoModel = value;
}
