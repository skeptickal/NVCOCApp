part of 'ebulletin_cubit.dart';

@immutable
class EbulletinState extends Equatable {
  final Ebulletin? ebulletin;

  const EbulletinState({this.ebulletin});

  EbulletinState copyWith({ebulletin}) {
    return EbulletinState(ebulletin: ebulletin ?? this.ebulletin);
  }

  @override
  List<Object?> get props => [ebulletin];
}

final class EbulletinInitial extends EbulletinState {
  EbulletinInitial()
      : super(
            ebulletin: Ebulletin(
          link: 'Link Not Found',
        ));
}
