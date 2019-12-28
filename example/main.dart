import 'package:coord_convert/coord_convert.dart';

main() {
  final coords = Coords(31.233568, 121.505504); // Coords(lat, lng)

  // WGS-84 from GCJ-02
  final wgs84FromGcj02 = CoordConvert.gcj02towgs84(coords);
  print('WGS-84 from GCJ-02: $wgs84FromGcj02');

  // WGS-84 from BD-09
  final wgs84FromBd09 = CoordConvert.bd09towgs84(coords);
  print('WGS-84 from BD-09: $wgs84FromBd09');

  // GCJ-02 from WGS-84
  final gcj02FromWgs84 = CoordConvert.wgs84togcj02(coords);
  print('GCJ-02 from WGS-84: $gcj02FromWgs84');

  // GCJ-02 from BD-09
  final gcj02FromBd09 = CoordConvert.bd09togcj02(coords);
  print('GCJ-02 from BD-09: $gcj02FromBd09');

  // BD-09 from WGS-84
  final bd09FromWgs84 = CoordConvert.wgs84tobd09(coords);
  print('BD-09 from WGS-84: $bd09FromWgs84');

  // BD-09 from GCJ-02
  final bd09FromGcj02 = CoordConvert.gcj02tobd09(coords);
  print('BD-09 from GCJ-02: $bd09FromGcj02');
}
