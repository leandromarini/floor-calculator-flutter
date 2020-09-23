class ResultModel {
  double areaFloor;
  int piecesByWidth;
  int piecesByLength;

  double pricePieces;
  double priceFooter;
  double pricePiecesAndFooter;

  ResultModel({
    this.areaFloor,
    this.piecesByWidth,
    this.piecesByLength,
  });

  int get amountPieces => piecesByWidth * piecesByLength;
  int get amountFloor => piecesByWidth + piecesByLength;
  int get amountPiecesAndFooter => amountPieces + amountFloor;
  double get areaWithoutFooter => amountPieces * areaFloor;
  double get areaWithFooter => amountPiecesAndFooter * areaFloor;
}
