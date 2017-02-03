# JSF vs Angular

It all depends, as always - we cannot see into the future, just guess... 

## Conclusion
If you are focusing on user experience, go for Angular or some other SPA framework backed by REST.
If you are strong in Java but weak in web, you will probably get more productive in JSF in the short term.
You will stay productive as long as you are happy with available JSF components, but when you want to tweak or make you own components you will need to learn
web development, like javascript, html5, css. Stuff that you are not familiar with. This probably means low productivity and you may wish that you had made a different choice.  

## Links
<https://www.reddit.com/r/java/comments/4o20t3/angularjs_or_jsf_2/>
<https://dzone.com/articles/why-you-should-avoid-jsf> Read comments!
SPA: https://github.com/mmikowski/spa/blob/master/slides/2013-10-22-make_it_rock.pdf
SPA: https://mmikowski.github.io/no-frameworks/
SPA: The fog of SPA

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

## Contra JSF
* High skill cap, hard to find good developers
* Custom (UI)Components are not easy to write as they could be especially the rendering part (mitigated by Composite Components, but they are not as performant)
* More or less in "maintenance mode", though JSF 2.3 will add some long awaited features and there is no lack of new component libraries.
* Testability not so good. Unit testing javabeans or end-to-end testing only, testing front-end separate of back-end not possible. (Not verified)
* Not REST:
* REST based applications of course have a lighter load on the server
* No generic server-side API (compare with REST).
* Mixing back-end technology not supported (compare with REST).

## Pro Angular:
* Very light stress on the server
* More modern and a lot more popular
* Writing custom components is a breeze
* Great for micro-architectures
* Much better for SPA
* Testing front-end separate from back-end supported.
* Clean separation between backend and frontend when using REST.

## Contra Angular:
* IDE support isn't as good
* Javascript build pipeline is a mess (IMHO)
* Can be sluggish on slow devices due to a lot of Javascript
* Usually a lot of REST Api calls. In JSF for every page/view there is exactly one "endpoint" on the server that you need to secure, test and maintain. REST-Apis grow very large very quickly and you need to test, maintain and secure all of the endpoints. They also often require more client requests per page view.
* "Assumed" Server and Client "state" can get out of sync, i.e. when one REST call fails due to a connection timeout.
* Front-end frameworks move fast, you might have to update all of your code in a year.
