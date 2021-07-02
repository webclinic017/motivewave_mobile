import 'package:motivewave/src/shared_state/ticker.dart';
import 'package:motivewave/src/shared_state/depth_row.dart';

class DepthBook {
  List<DepthRow> askRows = [];
  List<DepthRow> bidRows = [];
  Ticker ticker;
}