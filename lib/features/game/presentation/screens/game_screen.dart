import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/candy_board_widget.dart';
import '../controllers/game_controller.dart';

class GameScreen extends ConsumerWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncBoard = ref.watch(gameControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Candy Crusher', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: asyncBoard.when(
        data: (board) => CandyBoardWidget(board: board.board),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: 
 ${error.toString()}')), 
      ),
    );
  }
}
