require "rails_helper"

RSpec.describe Food do
  before(:each) do
    @food_attr = {
      "fdcId": 451884,
      "description": "SWEET POTATOES",
      "dataType": "Branded",
      "gtinUpc": "832298010009",
      "publishedDate": "2019-04-01",
      "brandOwner": "NOT A BRANDED ITEM",
      "ingredients": "",
      "marketCountry": "United States",
      "foodCategory": "Pre-Packaged Fruit & Vegetables",
      "modifiedDate": "2018-02-16",
      "dataSource": "LI",
      "servingSizeUnit": "g",
      "servingSize": 130.0,
      "householdServingFullText": "1 .PETITE POTATO",
      "tradeChannels": [
          "NO_TRADE_CHANNEL"
      ],
      "allHighlightFields": "",
      "score": 1112.401,
      "microbes": [],
      "foodNutrients": [
          {
              "nutrientId": 1004,
              "nutrientName": "Total lipid (fat)",
              "nutrientNumber": "204",
              "unitName": "G",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 800,
              "indentLevel": 1,
              "foodNutrientId": 2998250,
              "percentDailyValue": 0
          },
          {
              "nutrientId": 1087,
              "nutrientName": "Calcium, Ca",
              "nutrientNumber": "301",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 31.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 5300,
              "indentLevel": 1,
              "foodNutrientId": 2998251,
              "percentDailyValue": 4
          },
          {
              "nutrientId": 1089,
              "nutrientName": "Iron, Fe",
              "nutrientNumber": "303",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.55,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 5400,
              "indentLevel": 1,
              "foodNutrientId": 2998252,
              "percentDailyValue": 4
          },
          {
              "nutrientId": 1090,
              "nutrientName": "Magnesium, Mg",
              "nutrientNumber": "304",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 28.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 5500,
              "indentLevel": 1,
              "foodNutrientId": 2998253,
              "percentDailyValue": 9
          },
          {
              "nutrientId": 1091,
              "nutrientName": "Phosphorus, P",
              "nutrientNumber": "305",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 46.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 5600,
              "indentLevel": 1,
              "foodNutrientId": 2998254,
              "percentDailyValue": 6
          },
          {
              "nutrientId": 1095,
              "nutrientName": "Zinc, Zn",
              "nutrientNumber": "309",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.23,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 5900,
              "indentLevel": 1,
              "foodNutrientId": 2998255,
              "percentDailyValue": 2
          },
          {
              "nutrientId": 1098,
              "nutrientName": "Copper, Cu",
              "nutrientNumber": "312",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.154,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 6000,
              "indentLevel": 1,
              "foodNutrientId": 2998256,
              "percentDailyValue": 10
          },
          {
              "nutrientId": 1101,
              "nutrientName": "Manganese, Mn",
              "nutrientNumber": "315",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 6100,
              "indentLevel": 1,
              "foodNutrientId": 2998257,
              "percentDailyValue": 15
          },
          {
              "nutrientId": 1104,
              "nutrientName": "Vitamin A, IU",
              "nutrientNumber": "318",
              "unitName": "IU",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 14200.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 7500,
              "indentLevel": 1,
              "foodNutrientId": 2998258,
              "percentDailyValue": 370
          },
          {
              "nutrientId": 1162,
              "nutrientName": "Vitamin C, total ascorbic acid",
              "nutrientNumber": "401",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 2.8,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 6300,
              "indentLevel": 1,
              "foodNutrientId": 2998259,
              "percentDailyValue": 6
          },
          {
              "nutrientId": 1165,
              "nutrientName": "Thiamin",
              "nutrientNumber": "404",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 6400,
              "indentLevel": 1,
              "foodNutrientId": 2998260,
              "percentDailyValue": 6
          },
          {
              "nutrientId": 1166,
              "nutrientName": "Riboflavin",
              "nutrientNumber": "405",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.052,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 6500,
              "indentLevel": 1,
              "foodNutrientId": 2998261,
              "percentDailyValue": 4
          },
          {
              "nutrientId": 1167,
              "nutrientName": "Niacin",
              "nutrientNumber": "406",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.615,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 6600,
              "indentLevel": 1,
              "foodNutrientId": 2998262,
              "percentDailyValue": 4
          },
          {
              "nutrientId": 1170,
              "nutrientName": "Pantothenic acid",
              "nutrientNumber": "410",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.769,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 6700,
              "indentLevel": 1,
              "foodNutrientId": 2998263,
              "percentDailyValue": 10
          },
          {
              "nutrientId": 1175,
              "nutrientName": "Vitamin B-6",
              "nutrientNumber": "415",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.231,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 6800,
              "indentLevel": 1,
              "foodNutrientId": 2998264,
              "percentDailyValue": 15
          },
          {
              "nutrientId": 1177,
              "nutrientName": "Folate, total",
              "nutrientNumber": "417",
              "unitName": "UG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 12.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 6900,
              "indentLevel": 1,
              "foodNutrientId": 2998265,
              "percentDailyValue": 4
          },
          {
              "nutrientId": 1185,
              "nutrientName": "Vitamin K (phylloquinone)",
              "nutrientNumber": "430",
              "unitName": "UG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 1.2,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 8800,
              "indentLevel": 1,
              "foodNutrientId": 2998266,
              "percentDailyValue": 2
          },
          {
              "nutrientId": 1253,
              "nutrientName": "Cholesterol",
              "nutrientNumber": "601",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 15700,
              "indentLevel": 1,
              "foodNutrientId": 2998267,
              "percentDailyValue": 0
          },
          {
              "nutrientId": 1258,
              "nutrientName": "Fatty acids, total saturated",
              "nutrientNumber": "606",
              "unitName": "G",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "derivationId": 75,
              "value": 0.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 9700,
              "indentLevel": 1,
              "foodNutrientId": 2998268,
              "percentDailyValue": 0
          },
          {
              "nutrientId": 1003,
              "nutrientName": "Protein",
              "nutrientNumber": "203",
              "unitName": "G",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "derivationId": 70,
              "value": 1.54,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 600,
              "indentLevel": 1,
              "foodNutrientId": 4370934,
              "percentDailyValue": 0
          },
          {
              "nutrientId": 1005,
              "nutrientName": "Carbohydrate, by difference",
              "nutrientNumber": "205",
              "unitName": "G",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "derivationId": 70,
              "value": 20.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 1110,
              "indentLevel": 2,
              "foodNutrientId": 4370935,
              "percentDailyValue": 9
          },
          {
              "nutrientId": 1008,
              "nutrientName": "Energy",
              "nutrientNumber": "208",
              "unitName": "KCAL",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "derivationId": 70,
              "value": 85.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 300,
              "indentLevel": 1,
              "foodNutrientId": 4370936,
              "percentDailyValue": 0
          },
          {
              "nutrientId": 2000,
              "nutrientName": "Total Sugars",
              "nutrientNumber": "269",
              "unitName": "G",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "derivationId": 70,
              "value": 3.85,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 1510,
              "indentLevel": 3,
              "foodNutrientId": 4370937,
              "percentDailyValue": 0
          },
          {
              "nutrientId": 1079,
              "nutrientName": "Fiber, total dietary",
              "nutrientNumber": "291",
              "unitName": "G",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "derivationId": 70,
              "value": 3.1,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 1200,
              "indentLevel": 3,
              "foodNutrientId": 4370938,
              "percentDailyValue": 16
          },
          {
              "nutrientId": 1092,
              "nutrientName": "Potassium, K",
              "nutrientNumber": "306",
              "unitName": "MG",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "derivationId": 70,
              "value": 338,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 5700,
              "indentLevel": 1,
              "foodNutrientId": 4370939,
              "percentDailyValue": 13
          },
          {
              "nutrientId": 1093,
              "nutrientName": "Sodium, Na",
              "nutrientNumber": "307",
              "unitName": "MG",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "derivationId": 70,
              "value": 54.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 5800,
              "indentLevel": 1,
              "foodNutrientId": 4370940,
              "percentDailyValue": 3
          },
          {
              "nutrientId": 1257,
              "nutrientName": "Fatty acids, total trans",
              "nutrientNumber": "605",
              "unitName": "G",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "derivationId": 70,
              "value": 0.0,
              "foodNutrientSourceId": 9,
              "foodNutrientSourceCode": "12",
              "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
              "rank": 15400,
              "indentLevel": 1,
              "foodNutrientId": 4370941,
              "percentDailyValue": 0
          }
      ],
      "finalFoodInputFoods": [],
      "foodMeasures": [],
      "foodAttributes": [
          {
              "value": "3",
              "name": "Ingredients",
              "id": 1064238
          }
      ],
      "foodAttributeTypes": [
          {
              "name": "Update Log",
              "description": "Changes that were made to this food",
              "id": 998,
              "foodAttributes": [
                  {
                      "value": "3",
                      "name": "Ingredients",
                      "id": 1064238
                  }
              ]
          }
      ],
      "foodVersionIds": []
  }

    @food = Food.new(@food_attr)
  end

  it "exists" do
    expect(@food).to be_a Food
    expect(@food.id).to eq(451884)
    expect(@food.gtinupc).to eq("832298010009")
    expect(@food.description).to eq("SWEET POTATOES")
    expect(@food.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(@food.ingredients).to eq("")
  end
end