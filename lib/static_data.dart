library static_data;

import 'package:hive/hive.dart';

import 'models/api/api.dart';
import 'models/common/common.dart';

export 'package:hive/hive.dart';
export 'package:hive_flutter/hive_flutter.dart';

export 'constants/constants.dart';
export 'models/models.dart';

Future<void> initialiseAdapter({required String resourcesHash}) async {
  if (!Hive.isAdapterRegistered(0)) {
    registerAdapter(CountryStateAdapter());
  }
  if (!Hive.isAdapterRegistered(1)) {
    registerAdapter(PostcodeAdapter());
  }
  if (!Hive.isAdapterRegistered(3)) {
    registerAdapter(RaceAdapter());
  }
  if (!Hive.isAdapterRegistered(4)) {
    registerAdapter(LanguageAdapter());
  }
  if (!Hive.isAdapterRegistered(5)) {
    registerAdapter(ReligionAdapter());
  }
  if (!Hive.isAdapterRegistered(6)) {
    registerAdapter(MaritalStatusAdapter());
  }
  if (!Hive.isAdapterRegistered(7)) {
    registerAdapter(OccupationAdapter());
  }
  if (!Hive.isAdapterRegistered(8)) {
    registerAdapter(RateHourAdapter());
  }
  if (!Hive.isAdapterRegistered(9)) {
    registerAdapter(RateExtraAdapter());
  }
  if (!Hive.isAdapterRegistered(10)) {
    registerAdapter(RateChildrenAdapter());
  }
  if (!Hive.isAdapterRegistered(11)) {
    registerAdapter(CarerReviewQuestionAdapter());
  }
  if (!Hive.isAdapterRegistered(12)) {
    registerAdapter(BookingStatusAdapter());
  }
  if (!Hive.isAdapterRegistered(13)) {
    registerAdapter(JobStatusAdapter());
  }
  if (!Hive.isAdapterRegistered(14)) {
    registerAdapter(CarerApplicationStatusAdapter());
  }
  if (!Hive.isAdapterRegistered(15)) {
    registerAdapter(BankModelAdapter());
  }
  if (!Hive.isAdapterRegistered(16)) {
    registerAdapter(CarerTypeAdapter());
  }
  if (!Hive.isAdapterRegistered(17)) {
    registerAdapter(NationalityAdapter());
  }
  if (!Hive.isAdapterRegistered(18)) {
    registerAdapter(CarerGetStaticDataResponseAdapter());
  }
  if (!Hive.isAdapterRegistered(19)) {
    registerAdapter(CustomerGetStaticDataResponseAdapter());
  }
  if (!Hive.isAdapterRegistered(20)) {
    registerAdapter(InstitutionAdapter());
  }
  if (!Hive.isAdapterRegistered(21)) {
    registerAdapter(CarerHighestEducationAdapter());
  }
  if (!Hive.isAdapterRegistered(22)) {
    registerAdapter(CarerEducationStatusAdapter());
  }
  if (!Hive.isAdapterRegistered(23)) {
    registerAdapter(CarerWorkStatusAdapter());
  }
  if (!Hive.isAdapterRegistered(24)) {
    registerAdapter(CarerEmploymentStatusAdapter());
  }
  if (!Hive.isAdapterRegistered(25)) {
    registerAdapter(CarerBreadwinnerStatusAdapter());
  }
  if (!Hive.isAdapterRegistered(26)) {
    registerAdapter(CarerIncomeCategoryAdapter());
  }
  if (!Hive.isAdapterRegistered(27)) {
    registerAdapter(CarerIntroQuizzesAdapter());
  }
}

void registerAdapter<T extends Object>(TypeAdapter<T> adapter) {
  return Hive.registerAdapter<T>(adapter);
}

Future<Box<T>?> openBox<T extends Object>({required String name}) async {
  return await Hive.openBox<T>(name);
}

T? getStorage<T extends Object>({required String name, required String key}) {
  return Hive.box<T>(name).get(key);
}

Future<void> addStorage<T extends Object>({
  required String name,
  required String key,
  required dynamic data,
}) async {
  return await Hive.box<T>(name).put(key, data);
}
