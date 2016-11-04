# FitNesse

Recommended maven-integrations at fitnesse.org: <http://fitnesse.org/FitNesse.UserGuide.WritingAcceptanceTests.RunningFromMaven>
Pros and cons: 

## FitNesse Launcher plugin
See <http://programmador.blogspot.se/2016/02/fitnesse-launcher-maven-plugin.html> for pros and cons. 

* Like this plugin a lot, but it's not maintained anymore it seems, **latest release was 2014-08, for fitnesse 20140201**: <https://mvnrepository.com/artifact/uk.co.javahelp.fitnesse/fitnesse-launcher-maven-plugin>
* It becomes very convenient to place your FitNesse tests close to your code. You put them under src/test/fitnesse/WhatEver, possibly in a separate maven module.
* It’s brilliant support for running the wiki, and editing your source controlled FitNesse tests directly from FitNesse using SymLinks.
* It makes your maven dependencies automatically available to FitNesse.

    mvn clean install -P auto

## Mafia Maven Plugin
*Have not used extensively, only tried setting it up*

* Seems to be intended to run where you're source is, as opposed to above where it's run under target. I prefer under target so I keep the src directory clean. 
* Does not support running in target directory with symlinks to src directory.  
* Actively maintained: <https://mvnrepository.com/artifact/nl.sijpesteijn.testing.fitnesse.plugins/mafia-maven-plugin>
* Does not support latest version of FitNesse according to <https://github.com/sijpesteijn/mafia-maven-plugin>

## Maven Ant Plugin
Tried setting it up to work like the Launcher plugin, and got it working easily. Did not fix an issue with basedir however, shouldn't be a problem though. Seems to be the most flexible solution.

* You use FitNesse plugin maven-classpath-plugin that reads pom and sets up dependencies.
* Can be used with any version of FitNesse
* Not actively maintained, but probably doesn´t need to be: <https://mvnrepository.com/artifact/org.apache.maven.plugins/maven-antrun-plugin>
* You 