import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/game_controller.dart';
import '../widgets/candy_board_widget.dart';

class GameScreen extends ConsumerWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boardAsyncValue = ref.watch(gameControllerProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Candy Crush Clone')),
      body: boardAsyncValue.when(
        data: (board) => CandyBoardWidget(board: board),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
