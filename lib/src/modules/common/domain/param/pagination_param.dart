// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class PageParam extends Equatable {
  final int page;

  const PageParam({
    required this.page,
  });

  @override
  List<Object> get props => [page];
}
