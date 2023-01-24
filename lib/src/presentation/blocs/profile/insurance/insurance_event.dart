part of 'insurance_bloc.dart';

abstract class InsuranceEvent extends Equatable {
  const InsuranceEvent();
}

class FetchInsuranceList extends InsuranceEvent {
  const FetchInsuranceList();
  @override
  List<Object?> get props => [];
}
