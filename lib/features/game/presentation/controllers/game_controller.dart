import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/candy_board.dart';
import '../../domain/repositories/game_repository.dart';

typed class GameController extends AsyncNotifier<CandyBoard> {
  @override
  Future<CandyBoard> build() async {
    return await ref.read(gameRepositoryProvider).fetchBoard();
  }
}

final gameRepositoryProvider = Provider<GameRepository>((ref) {
  return GameRepositoryImpl();
});

final gameControllerProvider = AsyncNotifierProvider<GameController, CandyBoard>(GameController.new);
