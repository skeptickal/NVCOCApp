import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import 'package:nvcoc_app/cubits/leader_cubit/leader_cubit.dart';

import 'package:nvcoc_app/models/leader.dart';

import 'package:nvcoc_app/pages/ministries_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

void main() {
  final MockLeaderCubit mockLeaderCubit = MockLeaderCubit();
  Leader leaders = Leader(leaderName: 'me', role: 'leader of things', image: 'image.png');
  MockFirebaseClient client = MockFirebaseClient();

  group(
    'Ministries Screen',
    () {
      testWidgets(
        'Ministries and Leaders Info Widgets are Visible',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;
          when(() => mockLeaderCubit.state).thenReturn(LeaderState(leaders: [leaders]));
          when(() => mockLeaderCubit.getLeaders()).thenAnswer((_) => Future.value());
          when(() => client.getData(collectionName: any(named: 'collectionName'))).thenAnswer((invocation) => Future.value());
          await mockNetworkImages(() async => await tester.pumpWidget(
                Materializer(
                  mockCubits: [mockLeaderCubit],
                  child: const MinistriesScreen(),
                ),
              ));

          final titleKeyFinder = find.byKey(const Key('ministries_and_leaders_title'));
          expect(titleKeyFinder, findsOneWidget);

          final youthKeyFinder = find.byKey(const Key('youth_and_family'));
          expect(youthKeyFinder, findsOneWidget);
          final campusKeyFinder = find.byKey(const Key('campus'));
          expect(campusKeyFinder, findsOneWidget);
          final mosaicKeyFinder = find.byKey(const Key('mosaic'));
          expect(mosaicKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
