part of 'accounting_bloc.dart';

abstract class AccountingState extends Equatable {
  const AccountingState();
  
  @override
  List<Object> get props => [];
}

class AccountingInitial extends AccountingState {}
