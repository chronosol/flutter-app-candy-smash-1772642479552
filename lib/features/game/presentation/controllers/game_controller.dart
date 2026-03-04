import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/candy_board.dart';
import '../../data/repositories/game_repository_impl.dart';

final gameRepositoryProvider = Provider<GameRepository>((ref) {
  return GameRepositoryImpl();
});

final gameControllerProvider =
    AsyncNotifierProvider<GameController, CandyBoard>(GameController.new);

class GameController extends AsyncNotifier<CandyBoard> {
  @override
  Future<CandyBoard> build() async {
    return await ref.read(gameRepositoryProvider).fetchBoard();
  }
}
