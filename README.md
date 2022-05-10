# LodView

LodView is a Java web application based on Spring and Jena, it's a tool able to offer a W3C standard compliant IRI dereferenciation. LodView, in conjunction with a SPARQL endpoint, allows you to publish RDF data according to all defined standards for Linked Open Data.

[This fork](https://github.com/konradhoeffner/lodview) adds Docker deployment and some small improvements to [LodLive/LodView](https://github.com/LodLive/LodView/).

## Configuration

LodView can be configured with the following properties in conf.ttl or environment variables.
Single value properties can be overridden using environment variables.
For a detailed explanation of the properties and their valid values, see <https://github.com/LodLive/LodView/blob/master/src/main/webapp/WEB-INF/conf.ttl>.

| environment variable			| conf.ttl property		| default value						|
|-------------------------------|---------------------------|--------------------------------|
|<br>Single Value<br><br>		|
|LodViewendpoint				| endpoint					| http://dbpedia.org/sparql		|
|LodViewendPointType			| endPointType				| virtuoso						|
|LodViewauthPassword			| authPassword				|								|
|LodViewauthUsername			| authUsername				|								|
|LodViewforceIriEncoding		| forceIriEncoding			|								|
|LodViewredirectionStrategy		| redirectionStrategy		|								|
|LodViewIRInamespace			| IRInamespace				| http://dbpedia.org/resource/	|
|LodViewhttpRedirectSuffix		| httpRedirectSuffix		| .html							|
|LodViewhttpRedirectPrefix		| httpRedirectPrefix		|								|
|LodViewhttpRedirectExcludeList	| httpRedirectExcludeList	|								|
|LodViewpublicUrlPrefix			| publicUrlPrefix			| auto							|
|LodViewcontentEncoding			| contentEncoding			|								|
|LodViewstaticResourceURL		| staticResourceURL			| auto							|
|LodViewhomeUrl					| homeUrl					| none, always specify this 	|
|LodViewpreferredLanguage		| preferredLanguage			|								|
|LodViewdefaultverseBehaviour	| defaultverseBehaviour		| close							
|<br>Multiple Values			|							|								|
|								| typeProperties			|								|
|								| titleProperties			|								|
|								| descriptionProperties		|								|
|								| imageProperties			|								|
|								| audioProperties			|								|
|								| videoProperties			|								|
|								| linkingProperties			|								|
|								| longitudeProperties		|								|
|								| latitudeProperties		|								|
|								| defaultQueries			|								|
|								| defaultRawDataQueries		|								|
|								| defaultversesQueries		|								|
|								| defaultversesTest			|								|
|								| defaultversesCountQueries	|								|
|								| mainOntologiesPrefixes	|								|

## Example

    docker run --rm --name lodview -p 8080:8080 ghcr.io/konradhoeffner/lodview

Open <http://localhost:8080/Leipzig> in your browser.
