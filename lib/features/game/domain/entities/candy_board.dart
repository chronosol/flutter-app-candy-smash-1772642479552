class CandyBoard {
  final List<List<int>> board;
  const CandyBoard({required this.board});

  CandyBoard copyWith({List<List<int>>? board}) {
    return CandyBoard(board: board ?? this.board);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CandyBoard &&
          runtimeType == other.runtimeType &&
          board == other.board;

  @override
  int get hashCode => board.hashCode;

  @override
  String toString() => 'CandyBoard(board: $board)';
}
