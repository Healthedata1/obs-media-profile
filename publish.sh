#!/bin/bash
name="IG-starter-template"
path1=/Users/ehaas/Documents/FHIR/obs-media-profile/
path2=/Users/ehaas/Downloads/
echo "================================================================="
echo === Publish $name IG!!! $(date -u) ===
echo "================================================================="
git status
java -jar ${path2}org.hl7.fhir.igpublisher.jar -ig ${path1}ig.json -watch
