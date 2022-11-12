import 'dart:convert';

class StockModel {
  static List<Item>? items;
}

class Item {
  final String symbol;
  final String series;
  final String openPrice;
  final String highPrice;
  final String lowPrice;
  final String ltp;
  final String previousPrice;
  final String netPrice;
  final String tradedQuantity;
  final String turnoverInLakhs;
  final String lastCorpAnnouncementDate;
  final String lastCorpAnnouncement;

  Item(
      this.symbol,
      this.series,
      this.openPrice,
      this.highPrice,
      this.lowPrice,
      this.ltp,
      this.previousPrice,
      this.netPrice,
      this.tradedQuantity,
      this.turnoverInLakhs,
      this.lastCorpAnnouncementDate,
      this.lastCorpAnnouncement);

  Item copyWith({
    String? symbol,
    String? series,
    String? openPrice,
    String? highPrice,
    String? lowPrice,
    String? ltp,
    String? previousPrice,
    String? netPrice,
    String? tradedQuantity,
    String? turnoverInLakhs,
    String? lastCorpAnnouncementDate,
    String? lastCorpAnnouncement,
  }) {
    return Item(
      symbol ?? this.symbol,
      series ?? this.series,
      openPrice ?? this.openPrice,
      highPrice ?? this.highPrice,
      lowPrice ?? this.lowPrice,
      ltp ?? this.ltp,
      previousPrice ?? this.previousPrice,
      netPrice ?? this.netPrice,
      tradedQuantity ?? this.tradedQuantity,
      turnoverInLakhs ?? this.turnoverInLakhs,
      lastCorpAnnouncementDate ?? this.lastCorpAnnouncementDate,
      lastCorpAnnouncement ?? this.lastCorpAnnouncement,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'symbol': symbol});
    result.addAll({'series': series});
    result.addAll({'openPrice': openPrice});
    result.addAll({'highPrice': highPrice});
    result.addAll({'lowPrice': lowPrice});
    result.addAll({'ltp': ltp});
    result.addAll({'previousPrice': previousPrice});
    result.addAll({'netPrice': netPrice});
    result.addAll({'tradedQuantity': tradedQuantity});
    result.addAll({'turnoverInLakhs': turnoverInLakhs});
    result.addAll({'lastCorpAnnouncementDate': lastCorpAnnouncementDate});
    result.addAll({'lastCorpAnnouncement': lastCorpAnnouncement});

    return result;
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['symbol'] ?? '',
      map['series'] ?? '',
      map['openPrice'] ?? '',
      map['highPrice'] ?? '',
      map['lowPrice'] ?? '',
      map['ltp'] ?? '',
      map['previousPrice'] ?? '',
      map['netPrice'] ?? '',
      map['tradedQuantity'] ?? '',
      map['turnoverInLakhs'] ?? '',
      map['lastCorpAnnouncementDate'] ?? '',
      map['lastCorpAnnouncement'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(symbol: $symbol, series: $series, openPrice: $openPrice, highPrice: $highPrice, lowPrice: $lowPrice, ltp: $ltp, previousPrice: $previousPrice, netPrice: $netPrice, tradedQuantity: $tradedQuantity, turnoverInLakhs: $turnoverInLakhs, lastCorpAnnouncementDate: $lastCorpAnnouncementDate, lastCorpAnnouncement: $lastCorpAnnouncement)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.symbol == symbol &&
        other.series == series &&
        other.openPrice == openPrice &&
        other.highPrice == highPrice &&
        other.lowPrice == lowPrice &&
        other.ltp == ltp &&
        other.previousPrice == previousPrice &&
        other.netPrice == netPrice &&
        other.tradedQuantity == tradedQuantity &&
        other.turnoverInLakhs == turnoverInLakhs &&
        other.lastCorpAnnouncementDate == lastCorpAnnouncementDate &&
        other.lastCorpAnnouncement == lastCorpAnnouncement;
  }

  @override
  int get hashCode {
    return symbol.hashCode ^
        series.hashCode ^
        openPrice.hashCode ^
        highPrice.hashCode ^
        lowPrice.hashCode ^
        ltp.hashCode ^
        previousPrice.hashCode ^
        netPrice.hashCode ^
        tradedQuantity.hashCode ^
        turnoverInLakhs.hashCode ^
        lastCorpAnnouncementDate.hashCode ^
        lastCorpAnnouncement.hashCode;
  }
}
