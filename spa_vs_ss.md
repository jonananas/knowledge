# JSF vs Angular

Den större diskussionen borde vara SPA vs Server-side, och däremellan finns en stor gråzon.
JSF och Spring MVC har ungefär lika stor marknadsandel.
Angular2/Angular.io verkar vara ett naturligt val för en 

Utgångspunkt (fördomar från start):

## Links
<https://www.reddit.com/r/java/comments/4o20t3/angularjs_or_jsf_2/>
<https://dzone.com/articles/why-you-should-avoid-jsf> Read comments!

## Pro JSF
* Great IDE support (custom tags are autocompleted and validated)
* Conciseness: Less work hours and maintenance hours with equally skilled teams due to less lines of code
* No custom glue required to synchronize between client and server state (because everything is on the server)
* For what it does, it is very fast
* Probably the best component libraries available today are for JSF
* Stable: Applications written in JSF will most likely still compile and work in 5 years.
* Much better AJAX support than other MVC frameworks.
* Concept of ViewScope makes writing CRUD very easy.
* Corporate backing of JCP, meaning long time backward compat. Not at the whim of OpenSource maintainers.

Contra JSF
* High skill cap, hard to find good developers
* Custom (UI)Components are not easy to write as they could be especially the rendering part (mitigated by Composite Components, but they are not as performant)
* REST based applications of course have a lighter load on the server
* More or less in "maintenance mode", though JSF 2.3 will add some long awaited features and there is no lack of new component libraries.
* Testability not so good. Unit testing javabeans or end-to-end testing only, testing front-end separate of back-end not possible.
* No generic server-side API (compare with REST).
* Mixing back-end technology not supported (compare with REST).

Pro Angular:
* Very light stress on the server
* More modern and a lot more popular
* Writing custom components is a breeze
* Great for micro-architectures
* Much better for SPA
* Testing front-end separate from back-end supported.
* Clean separation between backend and frontend when using REST.

Contra Angular:
* IDE support isn't as good
* Javascript build pipeline is a mess (IMHO)
* Can be sluggish on slow devices due to a lot of Javascript
* Usually a lot of REST Api calls. In JSF for every page/view there is exactly one "endpoint" on the server that you need to secure, test and maintain. REST-Apis grow very large very quickly and you need to test, maintain and secure all of the endpoints. They also often require more client requests per page view.
* "Assumed" Server and Client "state" can get out of sync, i.e. when one REST call fails due to a connection timeout.