import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';
import 'package:working_with_bloc/main.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    test('initial state is 0', () {
      expect(counterBloc.state, 0);
    });

    blocTest(
      'emits [1] when CounterEvent.increment is added',
      build: () => counterBloc,
      act: (bloc) => bloc!.add(CounterEvent.increment),
      expect: () => [1],
    );

    blocTest(
      'emits [-1] when CounterEvent.decrement is added',
      build: () => counterBloc,
      act: (bloc) => bloc.add(CounterEvent.decrement),
      expect: () => [-1],
    );
  });
}
