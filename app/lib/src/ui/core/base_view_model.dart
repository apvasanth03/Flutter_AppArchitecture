import 'package:rxdart/rxdart.dart';

abstract class BaseViewModel<STATE, EVENT, SIDEEFFECT> {
  final BehaviorSubject<STATE> lUIStateStream = BehaviorSubject();
  final BehaviorSubject<SIDEEFFECT> lSideEffectStream = BehaviorSubject();

  Stream<STATE> get uiStateStream => lUIStateStream.stream;

  Stream<SIDEEFFECT> get sideEffectStream => lSideEffectStream.stream;

  void handleEvent(EVENT event);
}
