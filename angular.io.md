# Angular.io
# Notes from Angular course

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
* What does @ in markup mean?

## Installing and creating first app
* Install node to get npm
* Install angular-cli
    ```npm install -g @angular/cli```
* Update package.json to latest versions

    npm i -g npm-check-updates
    npm-check-updates -u
    npm install
* If experiencing package-lock.json updates with same conf on different machines
See https://github.com/npm/npm/issues/16938:
* Ensure matching node/npm versions as a team: `node -v` and `npm -v` (and install matching versions if different)
* Remove your node modules: `rm -rf node_modules/`
* Clean your npm cache: `npm cache clean --force`
* Revert the changes in your package-lock.json file (and this file only).
* Install dependencies again: `npm i`

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
Tip: --dry-run 

    ng new projectname --prefix prefix
    ng generate component other --flat -is -it -spec false
    ng g c other --flat -is -it -spec false
    ng generate class classname
    ng generate directive directivename
    ng generate service servicename

See https://github.com/angular/angular-cli/wiki/build for flags like --prod etc to ng
    
## Javascript concepts
* structural mapping
* six value types; undefined, null, number, string, boolean, symbol, reference

## Angular concepts
* View Encapsulation; emulates shadow dom with attribute selectors
* Module
* Component: encapsulates model, view, and controller.
* Model - the data within component
* Pipe - data transformer
* Service - abstracts backend calls etc
* Routing - Client side urls; trigger component on url/link. Decouples inter-component dependencies
* Dependency Injection


## Component
* Do not do any work but initialization in constructor

## Pipes
{{ value | currency:'USD':true | uppercase }}

    npm install angular2-pipes
    <https://www.npmjs.com/package/angular2-pipes>
    npm generate pipe <name>
    
Pipe reruns every change event: value change, key event, mouse event, timer event, etc... --> Be careful about performance!
Pure change --> primitive type change
Impure change --> non-primitive type change, like collection or object.
Pipes are pure by default; they only respond to pure changes
Impure pipe:

    @Pipe({
      name: 'pipename',
      pure: false
    })


## Services
Sits in a name.service.ts-file, no annotation (@Injectable is not really needed)

    Injectable()
    export class NameService {
    }

Declare services in providers, either in each module, app-module (service is global), or each component (service per instance).
	
## Data bindings {} [] () [()]
* String interpolation {{expression resolving to string}}, ex: {{ disabled }}
* Property binding <button [disabled] = "expression resolving to value type">
 ** ex <button [disabled]="disabled">
 ** @Input (not needed anymore?)
* Event binding <button (click)="expression handling the event">
 ** ex <button (click)="doWork()"> 
 ** @Output EventEmitter
* Two-way binding (__slow__, but use when needed) <input [(ngModel)]="bound model ( object )">
 ** ex <input [(ngModel)]="message"
 ** ngModel binds to the primary action of the element
 ** banana-in-a-box 
* exported properties (from properties) are accessed by #variablename="ngModel"
** <input type="text" name="whatever" #variablename --> HtmlObject
** <input type="text" name="whatever" #variablename="ngModel" --> object
 
## Controls of classes
* <input .... #uniqueId> {#uniqueId.className}
* ng-pristine or ng-dirty
* ng-valid or ng-invalid
* ng-untouched or ng-touched 

## Directives
* Components are directives with a view
* <ng-content> is a built-in directive
* @Input, @Output are not directives
* Attribute directives interact with element; ngClass, ngStyle
* Structural directives changes DOM: *ngIf, *ngFor, ngSwitch/*ngSwitchCase/ngSwitchDefault
** If frequent: May be expensive!
* Custom attribute directives: Use renderer.setElementStyle(this.elementRef.nativeElement, 'background-color', 'green') or @HostBinding
* Listen to events with @HostListener

    @HostListener('mouseenter')
    ng generate directive directives/<directive-name> --dry-run

### ngFor
* let book of books; let i = index
* index, first, last, even, odd 

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
* To Inject service in service, use @Injectable() decorator.
* If injected in Component --> Each component gets separate instance
* If injected in Module --> All components in module share instance
* If injected in AppModule --> All components in application share instance

     providers: [Service]
*is short for

    providers: [{provide: Service, useClass: Service}] // bind Service token to Service class
* you can switch by

    providers: [{provide: Service, useClass: NewService}] // bind Service token to NewService class
    providers: [{provide: Service, useExisting: NewService}] // bind Service to class bound to NewService token
    providers: [{provide: Service, useValue: service}] // bind Service to service instance, service = {serviceFn: {return 2}} - just a json object
    providers: [{provide: Service, useFactory: service}] // bind Service to service factory, which returns service, DI is ok. pp 242 in Venkat.
    

## Services
*Can be used to wrap EventEmitter, so that one component can send and other subscribe from EventEmitter in service.

## Routing
* Uses browser pushState - you must have a base-tag to enable it:

    <head>...<base href="/"> 
* Create app-routing.module.ts which defines Routes and exports them as RouterModule.forRoot(APP_ROUTES) - there can be only one!;

    const APP_ROUTES = [{path: '', redirectTo: '/paperbacks', patchMatch: 'full'},
    						{path: '**', component: ErrorComponent}
    ];
    @NgModule({
      imports: [RouterModule.forRoot(routes)],
      exports: [RouterModule]
    })
    export class AppRoutingModule {}
* SubModules can have their own routing, but use RouterModule.forChild()!
* import AppRoutingModule in AppModule --> must be last module, otherwise it's wildcard will take over all submodules routing!
* Add <router-outlet> to app.component.html
* Make sure the routing target components are available in the app.module declarations.
* Use below to provide router link, each array being url segment

    <a [routerLink]="['path', 'to', 'router'] routerLinkActive="">link</a> 
* Use injected ActivatedRoute activatedRoute.params.subscribe to retrieve url segments 
* Use <a [routerLink]="['path']" [queryParams]="{param1: value1}" [fragment]="'section1'"> to provide queryParams with link and fragment
* Use activatedRoute.queryParams.subscribe to retrieve queryParams 
* In code use this.router.navigate(['/'], {queryParams: {analytics: 100}}) to route
* Possible to preserveQueryParams and preserveFragment across links
* routerLinkActive directive with [routerLinkActiveOptions]="{}" makes link styling a breeze.
* Guards: canActive, canDeAcivate
* Server side must handle "hard refresh", ie if user hits enter on url in browser window
** One way is to redirect to / instead of 404 --> must be better way?

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
* Built-in validators: required, minlength, maxlength, pattern

    <form #form="ngForm" (ngSubmit)="submitFunction()">
    <input type="submit" value="publish" [disabled]="!form.valid">

### Validators
* Can be tested by mocha/jasmine
* Are directives with a validate function
** return null if all is well
** return JSON object if invalid
* Create your own: Venkat pp 130.

    ng generate directive directives/DateValidator --dry-run

### Reactive Forms / Model Driven Form
* AbstractControls
* FormControl, FormGroup, FormArray, Validators
* Bring in ReactiveFormsModule into AppModule (in addition to FormsModule)
* FormBuilder from $angular/forms - inject in constructor

    this.form = this.formBuilder.group({
      title: ['...titile...', [Validators.required, new CustomValidator]],
      author: ['...author'],...
     });
    =====
    <form 
    =====
    Assessible via form.controls.title.value in both template and controller. Or ...title.valid, or ...title.errors | json
    Or form.valid, ex <input type="submit"
    =====
    this.form.setValue({ // all values!
      title: '...newvalue...',
      author: '...newauthor...',...
    });
    this.form.patchValue({ // any set of values
      title: '...newvalue...',
    });
    ===== valueChanges =====
    this.form.controls.authorField.subscribe(data => doWhatever())
    ===== 
    

## Animations

    npm install --save @angular/animations
    import { BrowserAnimationsModule } from '@angular/platform-browser/animations' 
template

    <div [@divState]="state"
    

## Annat
@Input
@Output
@HostListener and @HostBinding
Local variables 

    <p #boundParagraph>stuff</p>
    <p>{{boundParagraph.textContent}}</p>
To make local variables accessible in class

    @ViewChild('boundParagraph')
    boundParagraph: HTMLElement;

### HTML
 * template is in DOM but not shown
 * use ng-template 

## Design tips (from Venkat)
Generate one module per feature!
Conform to angular standard of each feature in separate directory

## Tool tips (from Venkat)
Use express as test backend
