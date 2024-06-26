import 'package:dart_lang/b_behavioral/h_state/cancel_order_state.dart';
import 'package:dart_lang/b_behavioral/h_state/order_managment.dart';
import 'package:dart_lang/b_behavioral/h_state/order_state.dart';
import 'package:dart_lang/b_behavioral/h_state/shipping_order_state.dart';

class ProcessingOrderState implements OrderState {
  final OrderManagement orderManagement;
  ProcessingOrderState(this.orderManagement);
  @override
  void cancelOrder() {
    print('Order is canceled');
    orderManagement.changeState(CancelOrderState(orderManagement));
  }

  @override
  void deliverdOrder() {
    print('Order is delivered');
  }

  @override
  void processOrder() {
    print('Order is  being procccing now');
  }

  @override
  void shipOrder() {
    print('Order is being shipped');
    orderManagement.changeState(ShippingOrderState(orderManagement));
  }
}
