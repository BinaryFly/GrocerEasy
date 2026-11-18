#!/usr/bin/bash

# curl --url 'https://www.jumbo.com/api/graphql?operationName=SearchProducts&variables=%7B%22input%22%3A%7B%22searchType%22%3A%22KEYWORD%22%2C%22searchTerms%22%3A%22Spruitjes%22%2C%22friendlyUrl%22%3A%22%3FsearchType%3Dkeyword%26searchTerms%3DSpruitjes%22%2C%22offSet%22%3A0%2C%22currentUrl%22%3A%22%2Fproducten%2F%3FsearchType%3Dkeyword%26searchTerms%3DSpruitjes%22%2C%22previousUrl%22%3A%22%22%2C%22bloomreachCookieId%22%3A%22%22%7D%2C%22shelfTextInput%22%3A%7B%22searchType%22%3A%22KEYWORD%22%2C%22friendlyUrl%22%3A%22%3FsearchType%3Dkeyword%26searchTerms%3DSpruitjes%22%7D%2C%22withFacetChildren%22%3Afalse%7D&extensions=%7B%22persistedQuery%22%3A%7B%22version%22%3A1%2C%22sha256Hash%22%3A%22b2e3c85e521bea5f57517c8a46a91ede79b4078bf2fee46c65134f51490bea6a%22%7D%7D' \
#   -H 'accept: */*' \
#   -H 'accept-language: nl-NL,nl;q=0.9,en-US;q=0.8,en;q=0.7' \
#   -H 'apollographql-client-name: JUMBO_WEB-search' \
#   -H 'apollographql-client-version: master-v40.9.0-web' \
#   -H 'content-type: application/json' \
#   -b 'country=BE; language=be_nl; AKA_A2=A; akaas_as=2147483647~rv=10~id=c893767aad42dd628d33ab4079a7efa9~rn=; user-session=18a88310-e294-11f1-937f-f3b29c0c39b9; fep_jodpuid=J901827181-1794926111; basket-sorting-option=CATEGORIES; shopping-list-sorting-option=CATEGORIES; consentStatusDetails=%7B%22isGpcEnabled%22%3Afalse%2C%22groups%22%3A%22J1000%3A1%2CJ2000%3A0%2CJ3000%3A0%22%7D; quantity-button-timeout-ms=3000; ak_bmsc=20F915A2A4AC01BA5234534CB1EB16C8~000000000000000000000000000000~YAAQZ8YRAgQ/ns6hAQAAue/u6QGSXRrTNSSnHsHos6v/5w6+jn0GziNi91zs0CiOzWGcJXoq5m2pNDuHhjU1tAqleDEV6W5AUIx1/rjPoIhELexqg59DN/q5tcae823Eo9W7yPmJFDnDwAiUC5JcJG6kZZEDDudTCvJDr187aEomi5LG0rdLfif7e8flydAJM1Tx9yKztZnwQiDsU7RbK+VeE+hP8xCfIOvuE1gVptbTaQygc6DswPSSdqsphkYOXFy9PGeSBNX2qn7OQ++e1JW3+RdbQKX/i5FMi61lQxJn1j5eYKT5XSrZ41DURhARRKMlVfBbbJJ0BeYne8cyXBRumY5XDUtoV6wOwwR3u8zAHZ9gAiQ5QGRKVKCZIWL+row+DNAMm7oKi8IADwJUEw+94zGhAhTFedwwI8ZiMtucXBLxNUqaQ1sU+l+/1a2zDHH2sQPoEhrSmyVy; OptanonAlertBoxClosed=2026-11-17T14:35:13.469Z; eupubconsent-v2=CQt021gQt021gAcABBNLC5FwAAAAAAAAAAYgAAAAAADhIBAAFQAQQAyADQAIoATAB-gEcAXmOgEAAVABBADIANAAmAD9AIsARwBeY4AEAQgBMRCACARwlADACYARwBeZSAQABUAEEAMgA0ACYAP0AiwBHAF5lAAICYgA.YAAAAAAAAAAA; SSLB=1; SSID_2rnq=CQDM4R04AAAAAAAjZvxqPzBEECNm_GoBAAAAAAAAAAAAI2b8agBAF8NsAQFn4CsAI2b8agEAh3cBAZO8LAAjZvxqAQAJaQEBD4srACNm_GoBAHl-AQGgKy0AI2b8agEA; SSSC_2rnq=1003.G7709148962934239295.1|92425.2853647:93379.2875495:96135.2931859:97913.2960288; i18n_redirected=nl-NL; SSRT_2rnq=Bmf8agAAAA; RT="z=1&dm=www.jumbo.com&si=a4e219fa-ce4b-4d9b-98f3-0632488ad3ad&ss=mwksnuyi&sl=4&tt=ve&bcn=%2F%2Face820ca.akstat.io%2F&obo=2&rl=1"; fep_jodpsid=404347608-1794928143092; OptanonConsent=isGpcEnabled=0&datestamp=Tue+Nov+17+2026+15%3A39%3A03+GMT%2B0100+(Central+European+Standard+Time)&version=202409.1.0&browserGpcFlag=0&isIABGlobal=false&hosts=&consentId=1a8d2a37-7bad-4d4e-9a24-371ebb75f283&interactionCount=1&isAnonUser=1&landingPath=NotLandingPage&groups=J1000%3A1%2CJ2000%3A0%2CJ3000%3A0&intType=2&geolocation=BE%3BBRU&AwaitingReconsent=false; _dd_s_v2=aid=04dd3fe8-ac1a-4e89-a04b-c578a3b0ca6a&id=48caac14-8a2d-41b9-bbbb-e08878ec7110&created=1794926115671&expire=1794927245430&c=0; bm_sv=982E926D05D25FF556A4B88A3951E72D~YAAQZ8YRApj2n86hAQAAS4Ly6QHpWvfQrHRnLbgCaoXpXgnDc2DFByCxJD2X8BszRXC535huAC+RNR1i6NG720zq6szgn69oiUf2jibBR64kfnKswCcMa6aBXbt+spgW6BZvY6QdAZF+ZzSmNN+Sszsz9aXoIJ3syWnWwlom79RXSDaBLKoORitGv4XQQmGdMLYxnCru2Ag7srNSlB9Bzmk4b27xm32DFIjyEuIdfpqR7HEfAcwOYqjsfzd0c0nx~1' \
#   -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36' \

variables="{\"input\":{\"searchType\":\"KEYWORD\",\"searchTerms\":\"$1\",\"friendlyUrl\":\"?searchType=keyword&searchTerms=$1\",\"offSet\":0,\"currentUrl\":\"/producten/\",\"previousUrl\":\"\",\"bloomreachCookieId\":\"\"},\"shelfTextInput\":{\"searchType\":\"KEYWORD\",\"friendlyUrl\":\"?searchType=keyword&searchTerms=Spruitjes\"},\"withFacetChildren\":false}"

# lets see if this works with a random hash, probably not
randomsha256hash=$(printf "jumbo-random-word" | sha256sum)

# Figure out where this hash comes from and how to recreate it so that we can send the same one to jumbo.
extensions="{\"persistedQuery\":{\"version\":1,\"sha256Hash\":\"b2e3c85e521bea5f57517c8a46a91ede79b4078bf2fee46c65134f51490bea6a\"}}"

curl --url 'https://www.jumbo.com/api/graphql' \
  --url-query 'operationName=SearchProducts' \
  --url-query "variables=$variables" \
  --url-query "extensions=$extensions" \
  -H 'apollographql-client-name: JUMBO_WEB-search' \
  -H 'apollographql-client-version: master-v40.9.0-web' \
  -H 'content-type: application/json' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36'
