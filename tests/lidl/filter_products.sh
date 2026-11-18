#!/bin/bash

jq '[
  .items.[].gridbox
  | .data as $d
  | (($d.lidlPlus // []) | length > 0) as $isAction
  | (if $isAction then $d.lidlPlus[0] else $d end) as $offer
  | {
      title: $d.title,
      price: (try $offer.price.price),
      quantity: (try $offer.price.packaging.text),
      isAction: $isAction,
      image: $d.image
    }
]' products.json > products_filtered.json
