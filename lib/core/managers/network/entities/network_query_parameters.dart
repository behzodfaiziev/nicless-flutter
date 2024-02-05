class NetworkQueryParameters {
  final int? limit;
  final String? orderBy;
  final bool isDescending;
  final String? whereField;
  final Object? whereIsEqualTo;
  final String? whereField2;
  final Object? whereIsEqualTo2;
  final String? lastDocumentId;

  NetworkQueryParameters({
    this.isDescending = true,
    this.limit,
    this.orderBy,
    this.whereField,
    this.whereIsEqualTo,
    this.whereField2,
    this.whereIsEqualTo2,
    this.lastDocumentId,
  });
}
