The Jumbo API is a little more useful than the LIDL one, but there is another thing that makes it hard to use.

For every search request we execute we need to send a sha256 hash with it in the query parameters.
On the website this hash changes around every 2 to 3 graphql requests.
I don't know what I am supposed to hash or how to retrieve this exact hash, and without it the request will not give back any results,
a solution would be to visit the actual jumbo webpage everytime and retrieve a hash we can use, but this seems overkill and a lot of extra effort to implement.

Therefore we will treat the Jumbo API as a possible future implementation after using the Dirk and Albert Heijn results for our application.
