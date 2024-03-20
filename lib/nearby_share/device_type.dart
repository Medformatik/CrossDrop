enum DeviceType {
  unknown,
  phone,
  tablet,
  computer;

  static DeviceType fromRawValue(int value) {
    switch (value) {
      case 0:
        return DeviceType.unknown;
      case 1:
        return DeviceType.phone;
      case 2:
        return DeviceType.tablet;
      case 3:
        return DeviceType.computer;
      default:
        return DeviceType.unknown;
    }
  }

  int toRawValue() {
    switch (this) {
      case DeviceType.unknown:
        return 0;
      case DeviceType.phone:
        return 1;
      case DeviceType.tablet:
        return 2;
      case DeviceType.computer:
        return 3;
      default:
        return 0;
    }
  }
}
