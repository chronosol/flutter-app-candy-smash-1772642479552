import 'package:flutter/material.dart';
import '../../domain/entities/candy_board.dart';

class CandyBoardWidget extends StatelessWidget {
  final CandyBoard board;

  const CandyBoardWidget({Key? key, required this.board}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 9,
      ),
      itemCount: board.board.length * board.board[0].length,
      itemBuilder: (context, index) {
        final int row = index ~/ board.board.length;
        final int col = index % board.board[row].length;
        return Container(
          margin: const EdgeInsets.all(2.0),
          color: Colors.greenAccent,
          child: Center(
            child: Text('${board.board[row][col]}'),
          ),
        );
      },
    );
  }
}
