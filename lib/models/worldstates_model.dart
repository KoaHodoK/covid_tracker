class WorldStatesModel {
  WorldStatesModel({
    required this.updated,
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
    required this.oneCasePerPeople,
    required this.oneDeathPerPeople,
    required this.oneTestPerPeople,
    required this.activePerOneMillion,
    required this.recoveredPerOneMillion,
    required this.criticalPerOneMillion,
    required this.affectedCountries,
  });
  late final int updated;
  late final int cases;
  late final int todayCases;
  late final int deaths;
  late final int todayDeaths;
  late final int recovered;
  late final int todayRecovered;
  late final int active;
  late final int critical;
  late final int casesPerOneMillion;
  late final double deathsPerOneMillion;
  late final int tests;
  late final double testsPerOneMillion;
  late final int population;
  late final int oneCasePerPeople;
  late final int oneDeathPerPeople;
  late final int oneTestPerPeople;
  late final double activePerOneMillion;
  late final double recoveredPerOneMillion;
  late final double criticalPerOneMillion;
  late final int affectedCountries;

  WorldStatesModel.fromJson(Map<String, dynamic> json) {
    if (json["updated"] is int) this.updated = json["updated"];
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
    if (json["deathsPerOneMillion"] is double)
      this.deathsPerOneMillion = json["deathsPerOneMillion"];
    if (json["tests"] is int) this.tests = json["tests"];
    if (json["testsPerOneMillion"] is double)
      this.testsPerOneMillion = json["testsPerOneMillion"];
    if (json["population"] is int) this.population = json["population"];
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
    if (json["affectedCountries"] is int)
      this.affectedCountries = json["affectedCountries"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["updated"] = this.updated;
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
    data["oneCasePerPeople"] = this.oneCasePerPeople;
    data["oneDeathPerPeople"] = this.oneDeathPerPeople;
    data["oneTestPerPeople"] = this.oneTestPerPeople;
    data["activePerOneMillion"] = this.activePerOneMillion;
    data["recoveredPerOneMillion"] = this.recoveredPerOneMillion;
    data["criticalPerOneMillion"] = this.criticalPerOneMillion;
    data["affectedCountries"] = this.affectedCountries;
    return data;
  }
}
