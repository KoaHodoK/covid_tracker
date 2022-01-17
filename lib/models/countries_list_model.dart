class CountriesListModel {
  late int updated;
  late String country;
  late CountryInfo countryInfo;
  late int cases;
  late int todayCases;
  late int deaths;
  late int todayDeaths;
  late int recovered;
  late int todayRecovered;
  late int active;
  late int critical;
  late int casesPerOneMillion;
  late int deathsPerOneMillion;
  late int tests;
  late int testsPerOneMillion;
  late int population;
  late String continent;
  late int oneCasePerPeople;
  late int oneDeathPerPeople;
  late int oneTestPerPeople;
  late double activePerOneMillion;
  late double recoveredPerOneMillion;
  late double criticalPerOneMillion;

  CountriesListModel({
    required this.updated,
    required this.country,
    required this.countryInfo,
    required this.cases,
    required this.todayCases,
    required this.deaths,
    required this.todayDeaths,
    required this.recovered,
    required this.todayRecovered,
    required this.active,
    required this.critical,
    required this.casesPerOneMillion,
    required this.deathsPerOneMillion,
    required this.tests,
    required this.testsPerOneMillion,
    required this.population,
    required this.continent,
    required this.oneCasePerPeople,
    required this.oneDeathPerPeople,
    required this.oneTestPerPeople,
    required this.activePerOneMillion,
    required this.recoveredPerOneMillion,
    required this.criticalPerOneMillion,
  });

  CountriesListModel.fromJson(Map<String, dynamic> json) {
    if (json["updated"] is int) this.updated = json["updated"];
    if (json["country"] is String) this.country = json["country"];
    if (json["countryInfo"] is Map)
      this.countryInfo = (json["countryInfo"] == null
          ? null
          : CountryInfo.fromJson(json["countryInfo"]))!;
    if (json["cases"] is int) this.cases = json["cases"];
    if (json["todayCases"] is int) this.todayCases = json["todayCases"];
    if (json["deaths"] is int) this.deaths = json["deaths"];
    if (json["todayDeaths"] is int) this.todayDeaths = json["todayDeaths"];
    if (json["recovered"] is int) this.recovered = json["recovered"];
    if (json["todayRecovered"] is int)
      this.todayRecovered = json["todayRecovered"];
    if (json["active"] is int) this.active = json["active"];
    if (json["critical"] is int) this.critical = json["critical"];
    if (json["casesPerOneMillion"] is int)
      this.casesPerOneMillion = json["casesPerOneMillion"];
    if (json["deathsPerOneMillion"] is int)
      this.deathsPerOneMillion = json["deathsPerOneMillion"];
    if (json["tests"] is int) this.tests = json["tests"];
    if (json["testsPerOneMillion"] is int)
      this.testsPerOneMillion = json["testsPerOneMillion"];
    if (json["population"] is int) this.population = json["population"];
    if (json["continent"] is String) this.continent = json["continent"];
    if (json["oneCasePerPeople"] is int)
      this.oneCasePerPeople = json["oneCasePerPeople"];
    if (json["oneDeathPerPeople"] is int)
      this.oneDeathPerPeople = json["oneDeathPerPeople"];
    if (json["oneTestPerPeople"] is int)
      this.oneTestPerPeople = json["oneTestPerPeople"];
    if (json["activePerOneMillion"] is double)
      this.activePerOneMillion = json["activePerOneMillion"];
    if (json["recoveredPerOneMillion"] is double)
      this.recoveredPerOneMillion = json["recoveredPerOneMillion"];
    if (json["criticalPerOneMillion"] is double)
      this.criticalPerOneMillion = json["criticalPerOneMillion"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["updated"] = this.updated;
    data["country"] = this.country;
    if (this.countryInfo != null)
      data["countryInfo"] = this.countryInfo.toJson();
    data["cases"] = this.cases;
    data["todayCases"] = this.todayCases;
    data["deaths"] = this.deaths;
    data["todayDeaths"] = this.todayDeaths;
    data["recovered"] = this.recovered;
    data["todayRecovered"] = this.todayRecovered;
    data["active"] = this.active;
    data["critical"] = this.critical;
    data["casesPerOneMillion"] = this.casesPerOneMillion;
    data["deathsPerOneMillion"] = this.deathsPerOneMillion;
    data["tests"] = this.tests;
    data["testsPerOneMillion"] = this.testsPerOneMillion;
    data["population"] = this.population;
    data["continent"] = this.continent;
    data["oneCasePerPeople"] = this.oneCasePerPeople;
    data["oneDeathPerPeople"] = this.oneDeathPerPeople;
    data["oneTestPerPeople"] = this.oneTestPerPeople;
    data["activePerOneMillion"] = this.activePerOneMillion;
    data["recoveredPerOneMillion"] = this.recoveredPerOneMillion;
    data["criticalPerOneMillion"] = this.criticalPerOneMillion;
    return data;
  }
}

class CountryInfo {
  late int id;
  late String iso2;
  late String iso3;
  late int lat;
  late int long;
  late String flag;

  CountryInfo(
      {required this.id,
      required this.iso2,
      required this.iso3,
      required this.lat,
      required this.long,
      required this.flag});

  CountryInfo.fromJson(Map<String, dynamic> json) {
    if (json["_id"] is int) this.id = json["_id"];
    if (json["iso2"] is String) this.iso2 = json["iso2"];
    if (json["iso3"] is String) this.iso3 = json["iso3"];
    if (json["lat"] is int) this.lat = json["lat"];
    if (json["long"] is int) this.long = json["long"];
    if (json["flag"] is String) this.flag = json["flag"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["_id"] = this.id;
    data["iso2"] = this.iso2;
    data["iso3"] = this.iso3;
    data["lat"] = this.lat;
    data["long"] = this.long;
    data["flag"] = this.flag;
    return data;
  }
}
