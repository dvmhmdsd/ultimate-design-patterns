import 'package:dart_lang/b_behavioral/g_chain_of_responsibilty/model/request_model.dart';

abstract class MiddleWareHandler {
  MiddleWareHandler setNex(MiddleWareHandler handler);
  bool handle(REquest request);
}
