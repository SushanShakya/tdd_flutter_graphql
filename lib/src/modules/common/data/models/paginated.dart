// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class Paginated<T extends Object> extends Equatable {
  final int count;
  final int pages;
  final int? next;
  final int? prev;
  final T data;

  const Paginated({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
    required this.data,
  });

  const Paginated.fake({
    this.count = 1,
    this.pages = 1,
    this.next = 1,
    this.prev = 1,
    required this.data,
  });

  Paginated<T> copyWith({
    int? count,
    int? pages,
    int? next,
    int? prev,
    T? data,
  }) {
    return Paginated<T>(
      count: count ?? this.count,
      pages: pages ?? this.pages,
      next: next ?? this.next,
      prev: prev ?? this.prev,
      data: data ?? this.data,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      count,
      pages,
      next,
      prev,
      data,
    ];
  }
}
