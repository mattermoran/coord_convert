# CoordConvert

[![pub package](https://img.shields.io/pub/v/coord_convert.svg)](https://pub.dartlang.org/packages/coord_convert)

CoordConvert is a small library to convert coordinates between different coordinate systems.

Supported coordinate systems:

- **WGS-84** | Standart used in most maps such as Google Maps, Apple Maps, Mapbox, OpenStreetMaps, etc
- **GCJ-02** | Coordinate system used by Chinese maps like Amap (Gaode Maps), Tencent Maps, etc except Baidu maps
- **BD-09** | Coordinate system used by Baidu Maps

Based on formulas from [here](https://blog.csdn.net/a13570320979/article/details/51366355)

## Get started

### Add dependency

```yaml
dependencies:
  coord_convert: 1.0.0
```

## Usage examples

Convert to _WGS-84_

```dart
import 'package:coord_convert/coord_convert.dart';

final coords = Coords(31.233568, 121.505504); // Coords(lat, lng)

// WGS-84 from GCJ-02
final Coords fromGCJ02 = CoordConvert.gcj02towgs84(coords);

// WGS-84 from BD-09
final Coords fromBD09 = CoordConvert.bd09towgs84(coords);
```

Convert to _GCJ-02_

```dart
import 'package:coord_convert/coord_convert.dart';

final coords = Coords(31.233568, 121.505504); // Coords(lat, lng)

// GCJ-02 from WGS-84
final fromWGS84 = CoordConvert.wgs84togcj02(coords);

// GCJ-02 from BD-09
final fromBD09 = CoordConvert.bd09togcj02(coords);
```

Convert to _BD-09_

```dart
import 'package:coord_convert/coord_convert.dart';

final coords = Coords(31.233568, 121.505504); // Coords(lat, lng)

// BD-09 from WGS-84
final fromWGS84 = CoordConvert.wgs84tobd09(coords);

// BD-09 from GCJ-02
final fromGCJ02 = CoordConvert.gcj02tobd09(coords);
```

## Contributing

Pull requests are welcome.
