import '../entities/candy_board.dart';

abstract class GameRepository {
  Future<CandyBoard> fetchBoard();
}
