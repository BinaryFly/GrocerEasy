#!/bin/bash

query="query {
  searchProducts(search: \"$1\", limit: 500) {
    products {
      ranking
      product {
        headerText
        productId
        brand
        department
        packaging
        image
        webgroup
        productAssortment(storeId: 66) {
          productId
          normalPrice
          offerPrice
          isSingleUsePlastic
          singleUsePlasticValue
          startDate
          endDate
          productOffer {
            textPriceSign
            endDate
            startDate
            disclaimerStartDate
            disclaimerEndDate
          }
          productInformation {
            productId
            headerText
            subText
            packaging
            image
            department
            webgroup
            brand
            logos {
              description
              position
              link
              image
            }
          }
        }
      }
    }
  }
}"

payload=$(jq -nc --arg q "$query" '{query: $q, variables: {}}')

curl 'https://web-gateway.dirk.nl/graphql' \
  -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0) Gecko/20100101 Firefox/102.0" \
  -H 'Content-Type: application/json' \
  -H 'Origin: https://www.dirk.nl' \
  -e 'https://www.dirk.nl/' \
  --data "$payload" \
  | jq '.' > products.json
