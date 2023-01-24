part of 'family_bloc.dart';

abstract class FamilyEvent extends Equatable {
  const FamilyEvent();
}

class FetchFamilyList extends FamilyEvent {
  const FetchFamilyList();
  @override
  List<Object?> get props => [];
}
