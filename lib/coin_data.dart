import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<dynamic> getCoinData() async {
    var url =
        "https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=6C261652-D645-426E-9E2D-B6C98FD3C7BD";
    var data = await http.get(url);
    print(data.body);
    return convert.jsonDecode(data.body);
  }
}
