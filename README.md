# What's in my Food

### Versions

Ruby 3.2.2

Rails 7.1.2

### Setup

- Fork and Clone this repo
- `bundle install`
- `rails db:{create,migrate}`
- `rails s`

We will be querying the FoodData Central API with an ingredient to retrieve a list of the ten most relevant foods that include that ingredient.

First, sign up for an api key here: https://fdc.nal.usda.gov/api-key-signup.html

The documentation for the API can be found here: https://fdc.nal.usda.gov/api-guide.html

Make sure you take the time to read the documentation carefully. Remember, we want to get a list of foods that contain an ingredient.

