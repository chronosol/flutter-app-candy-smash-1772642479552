import '../../domain/entities/candy_board.dart';
import '../../domain/repositories/game_repository.dart';

class GameRepositoryImpl implements GameRepository {
  @override
  Future<CandyBoard> fetchBoard() async {
    await Future.delayed(const Duration(seconds: 2));
    return CandyBoard(board: List.generate(9, (_) => List.generate(9, (_) => 0)));
  }
}
