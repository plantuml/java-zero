#!/bin/sh
java -cp lib/commons-compress-1.22.jar:lib/commons-io-2.11.0.jar:lib/commons-lang3-3.12.0.jar:lib/jackson-annotations-2.14.2.jar:lib/jackson-core-2.14.2.jar:lib/jackson-databind-2.14.2.jar:lib/javax.annotation-api-1.2.jar:lib/javax.inject-1.jar:lib/jsap-2.1.jar:lib/maven-api-meta-4.0.0-alpha-4.jar:lib/maven-api-model-4.0.0-alpha-4.jar:lib/maven-api-xml-4.0.0-alpha-4.jar:lib/maven-invoker-3.2.0.jar:lib/maven-model-4.0.0-alpha-4.jar:lib/maven-shared-utils-3.3.4.jar:lib/maven-xml-impl-4.0.0-alpha-4.jar:lib/org.eclipse.jdt.core-3.32.0.jar:lib/org.eclipse.sisu.inject-0.3.5.jar:lib/org.eclipse.sisu.plexus-0.3.5.jar:lib/plexus-classworlds-2.5.2.jar:lib/plexus-component-annotations-1.5.5.jar:lib/plexus-utils-3.0.24.jar:lib/slf4j-api-1.7.36.jar:lib/spoon-core-10.3.0-beta-16.jar:bin javazero.Transpile
haxe haxe/v1.hxml
python3 libplantuml.py