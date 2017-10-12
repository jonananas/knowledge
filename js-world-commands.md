

# Babel

    npm init
    npm install --save-dev babel-cli
    
# Express

    npm install express-generator -g
    express sample
    
# Require

# Sourcemap
Maps lines of source to lines of transpiled ES5.

# Testing
## JDD - Jesus Driven Development
 I put faith in the lord that my code works.

## Verification
It worked yesterday, does it work now?


Book: Test-Driving JavaScript Applications - Venkat Subramaniam

Protracted wraps selenium

## Level of maturity 
1. No automation
2. Automation at UI level
    Automate at the UI level --> pathway to hell automation
3. Automation at the right level to the right measure 

## Mocha and chai
   npm install mocha chai --save-dev
   mocha --watch into package.json test script
   
it and describe is mocha
expect is chai

## Code coverage

    npm install istanbul --save-dev
    "cover": "istanbul cover __mocha " in package.json

## Test doubles

    npm install sinon --save-dev
    sandbox.stub...
    sandbox.mock...
    
## Client side testing

    npm install mocha chai karma karma-cli --save-dev
    npm install karma karma-mocha karma-chai karma-chrome-launcher --save-dev
    npm install karma-clear-screen-reporter --save-dev
    npm install karma-sinon karma-sinon-chai --save-dev
    npm install karma-sourcemap-loader karma-webpack --save-dev
    
 Edit karma.conf.js, add frameworks chai and sinon, add files src and test
 Edit package.json, add "test": "karma start --reporters clear-screen,dots"
 
# Typescript
Does not support map and set yet (from ES6)
## compiler (to ES5)
 
     npm install tsc
     ./node_modules/tsc/bin/tsc --noEmitOnError file.ts
     
## Other stuff

    declare const $;  // Forward declaration
    console.log($);
## Structural mapping
As long as structures are same, same type.

## Generic

    class Pair<T> {
    	constructor(public value1: T, public value2: T) {}
    }
    new Pair("Jack", "Jill");
    
# Angular
From imperative to declarative - we do not want to manipulate DOM anymore.
Reversability - can I get out of the framework/library in five months?
Frameworks are harder to back out of than libraries.
Angular is a framework, react is a library.

Platform is more than a framework. It's a platform when it's pluggable, when you can choose what to include and exclude.

Angular has many moving parts!
angular-cli takes away a lot of the burden.
