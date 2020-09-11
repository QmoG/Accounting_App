import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'accounting_event.dart';
part 'accounting_state.dart';

class AccountingBloc extends Bloc<AccountingEvent, AccountingState> {
  AccountingBloc() : super(AccountingInitial());

  @override
  Stream<AccountingState> mapEventToState(
    AccountingEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
