import 'package:flutter/material.dart';

class CandyBoardWidget extends StatelessWidget {
  final List<List<int>> board;

  const CandyBoardWidget({Key? key, required this.board}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 9),
      itemCount: board.length * board.length,
      itemBuilder: (context, index) {
        final int row = (index ~/ board.length).toInt();
        final int col = (index % board.length).toInt();
        return Container(
          margin: const EdgeInsets.all(2),
          color: Colors.blue,
          child: Center(
            child: Text(
              board[row][col].toString(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        );
      },
    );
  }
}
