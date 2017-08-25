# Angular 2

ons 21.30-22.45
Fre 23:15-23:45
Lör 07:15-8.15 Two-way-databinding done.
Lör 21-22 Lifecycles, Project setup: recipe-item, list, app.
Sön 8-9 Project setup complete, directives started.
Sön 21.45-22.15
V9: 1,25+1,5+0,5+0,5+2=5,75
Mån 21.30-22.45, custom attribute and structural directives
Ons 20:30-22, Services started 
Tors 22.10-22:40 Service done, project services started.
Lör 0,5h
Sön 7.15-8, 10.45-11.30, 21.30-22 Routing, path-id, queryParams, fragments, redirection
V10: (0,5+1.75+0,25+1,25+0,75=4,5)
Mån 07:10-07:40 Routing; guards
Tis 06:30-07:45, 22-22.25 Routing: project
Ons 21:50-22:15 Routing project klart, påbörjat forms
Tor 07:25-07:50, 21:15-22.05 webclipse free try slut, testar webstorm 30 dagar., forms started
Fre 07:00-07:45 template binding forms done!

# Questions
* Where can I find list of angular events? 
* <https://www.w3schools.com/jsref/dom_obj_event.asp>?
* https://www.w3schools.com/angular/angular_events.asp?

## Installing and creating first app
* Install node to get npm
* Install angular-cli
    ```npm install -g @angular/cli```
* Update package.json to latest versions

    npm i -g npm-check-updates
    npm-check-updates -u
    npm install
* Create application
    ```ng new first-app```
* Start development server

    cd first-app
    ng serve

* Run test suite

    ng test
    ng e2e

## Reinstalling angular cli

    npm uninstall –g @angular/cli angular-cli
    npm cache clean
    npm install -g @angular/cli
    
## Angular cli commands and flags

    ng new projectname --prefix prefix
    ng generate component other --flat -is -it -spec false
    ng g c other --flat -is -it -spec false
    ng generate class classname
    ng generate directive directivename
    ng generate service servicename
    
## Angular concepts
* View Encapsulation; emulates shadow dom with attribute selectors

## Data binding
* String interpolation {{expression resolving to string}}
* Property binding <button [disabled] = "expression resolving to value type"> @Input
* Event binding <button (click)="expression handling the event" @Output EventEmitter
* Two-way binding (__slow__, but use when needed) <input [(ngModel)]="bound model ( object )">

## Directives
* Components are directives with a view
* <ng-content> is a built-in directive
* @Input, @Output are not directives
* Attribute directives interact with element; ngClass, ngStyle
* Structural directives changes DOM: \*ngIf, \*ngFor, ngSwitch/*ngSwitchCase/ngSwitchDefault
* Custom attribute directives: Use renderer.setElementStyle(this.elementRef.nativeElement, 'background-color', 'green') or @HostBinding
* Listen to events with @HostListener

## Component Lifecycles
OnInit, OnChanges, etc.

## Selectors
Similar to css-selectors:
'mysel' is a tag selector, ie use as <mysel>
'[mysel]' is an attribute selector, ie use as <div mysel>
'#mysel' is an id selector, ie use as <div id="mysel">
'.mysel' is a class selector, ie use as <div class="mysel">
etc.

## Debugging
* SrcMaps can be found under webpack/./src
* Use [Augury](augury.angular.io)

## Dependency injection
* Can only inject into Decorated entities
* To Inject service in service, use @Injectable() decorater.

## Services
*Can be used to wrap EventEmitter, so that one component can send and other subscribe from EventEmitter in service.

## Routing
* Create app.routing.ts which defines Routes and exports them as RouterModule.forRoot(APP_ROUTES);
* Add <routing-outlet> to app.component.html
* Make sure the routing target components are available in the app.module declarations.
* Use <a [routerLink]="['path']"> to provide link, each array being url segment
* Use activatedRoute.params.subscribe to retrieve url segments 
* Use <a [routerLink]="['path']" [queryParams]="{param1: value1}" [fragment]="'section1'"> to provide queryParams with link and fragment
* Use activatedRoute.queryParams.subscribe to retrieve queryParams 
* In code use this.router.navigate(['/'], {queryParams: {analytics: 100}}) to route
* Possible to preserveQueryParams and preserveFragment across links
* routerLinkActive directive with [routerLinkActiveOptions]="{}" makes link styling a breeze.
* Guards: canActive, canDeAcivate

## Forms
* Template-driven approach vs data-driven approach

### Template-driven 
* Angular will handle any form and make it a form directive.
* ngModel directive tells angular that an input is a control of that form
* name="<name>" tells angular which name the input is registered to
* Use <form (ngSubmit)="onSubmit(f)" #f="ngForm"> to set submit action and pass angular form into the method
* Two-way databinding changes model all the time, not only on submit.
* ngModelGroup makes it possible to group form data into separate objects.
* #email="ngModel" makes local ref point to angulars form control, making <*ngif="email.valid"> possible.

### Validation
* Angular adds ng-invalid style to all invalid input-files, making styling easy, ie .ng-invalid { border: 1px solid red; }.

## Annat
@Input
@Output
@HostListener and @HostBinding
Local variables 

    <p #boundParagraph>stuff</p>
    <p>{{boundParagraph.textContent}}</p>
To make local variables accessable in class

    @ViewChild('boundParagraph')
    boundParagraph: HTMLElement;

