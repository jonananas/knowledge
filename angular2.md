# Angular 2

ons 21.30-22.45
Fre 23:15-23:45
Lör 07:15-8.15 Two-way-databinding done.
Lör 21-22 Lifecycles, Project setup: recipe-item, list, app.
Sön 8-9 Project setup complete, directives started.
Sön 21.45-

## Installing and creating first app
* Install node to get npm
* Install angular-cli

    npm install -g @angular/cli
* Create application

    ng new first-app
* Start development server

    cd first-app
    ng serve

* Run test suite

    ng test
    ng e2e

## Reinstalling angular cli

    npm uninstall -g angular-cli
    npm cache clean
    npm install -g angular-cli@latest
    
## Angular cli commands and flags

    ng new projectname --prefix prefix
    ng generate component other --flat -is -it -spec false
    ng g c other --flat -is -it -spec false
    ng generate class classname
    ng generate directive directivename
    
## Angular concepts
* View Encapsulation; emulates shadow dom with attribute selectors

### Data binding
* String interpolation {{expression resolving to string}}
* Property binding <button [disabled] = "expression resolving to value type"> @Input
* Event binding <button (click)="expression handling the event" @Output EventEmitter
* Two-way binding (__slow__, but use when needed) <input [(ngModel)]="bound model ( object )">

### Directives
* Components are directives with a view
* <ng-content> is a built-in directive
* @Input, @Output are not directives
* Attribute directives interact with element; ngClass, ngStyle
* Structural directives changes DOM: \*ngIf, \*ngFor

### Component Lifecycles
OnInit, OnChanges, etc.

### Selectors
Similar to css-selectors:
'mysel' is a tag selector, ie use as <mysel>
'[mysel]' is an attribute selector, ie use as <div mysel>
'#mysel' is an id selector, ie use as <div id="mysel">
'.mysel' is a class selector, ie use as <div class="mysel">
etc.

### Annat
Local variables 

    <p #boundParagraph>stuff</p>
    <p>{{boundParagraph.textContent}}</p>
To make local variables accessable in class

    @ViewChild('boundParagraph')
    boundParagraph: HTMLElement;

