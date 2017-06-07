#!/bin/bash
name="IG-starter-template"
path1=/Users/ehaas/Documents/FHIR/obs-media-profile/
path2=/Users/ehaas/Downloads/
echo "================================================================="
echo === Publish $name IG!!! $(date -u) ===
echo "================================================================="
sleep 1
git status
sleep 3
python3 definitions.py
sleep 3
git status
java -jar ${path2}org.hl7.fhir.igpublisher.jar -ig ${path1}ig.json
