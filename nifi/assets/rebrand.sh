#!/bin/bash

echo "rebrand to alstom logo" 

bin/nifi.sh start
sleep 30
mkdir nifi-ui
cp work/nar/framework/nifi-framework-nar-1.4.0.nar-unpacked/META-INF/bundled-dependencies/nifi-web-ui-1.4.0.war nifi-ui
cd nifi-ui
jar xf nifi-web-ui-1.4.0.war
cp ../images/*.svg images/
jar cf nifi-web-ui-1.4.0.war *
cd ..
cp nifi-ui/nifi-web-ui-1.4.0.war work/nar/framework/nifi-framework-nar-1.4.0.nar-unpacked/META-INF/bundled-dependencies/
bin/nifi.sh stop
#rm -R nifi-ui

