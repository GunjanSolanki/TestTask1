# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  name: 'Burlap Bouquet'
)

product2 = Product.create(
  name: 'Peonies'
)

product3 = Product.create(
  name: 'The Minimalist'
)
product4 = Product.create(
  name: 'Jawbreaker'
)
Product.create(
  name: 'Reset Button'
)

distribution_center1 = DistributionCenter.create(
  name: 'Sun Valley'
)

distribution_center2 = DistributionCenter.create(
  name: 'Green Valley'
)

distribution_center3 = DistributionCenter.create(
  name: 'Agrogana'
)

FulfillmentCenter.create(
  name: 'Watsonville'
)

DistributionCenterProduct.create(
  distribution_center_id: distribution_center1.id,
  product_id: product2.id
)

DistributionCenterProduct.create(
  distribution_center_id: distribution_center2.id,
  product_id: product4.id
)

DistributionCenterProduct.create(
  distribution_center_id: distribution_center3.id,
  product_id: product3.id
)

DistributionCenterProduct.create(
  distribution_center_id: distribution_center3.id,
  product_id: product4.id
)
