#!/usr/bin/bash

defDirName="newExtension"

echo "Enter the project name"
read dirName

mkdir ${dirName:-$defDirName}

cd ${dirName:-$defDirName}

echo "{
  \"name\": \""${dirName:-$defDirName}"\",
  \"description\": \"this is an extension\"
  \"version\": \"1.0\",
  \"manifest_version\": 3,
  \"background\": {
    \"service_worker\": \"background.js\"
  },
  \"permissions\": [],
  \"action\": {
	\"default_popup\": \"popup.html\",
  }
}">manifest.json

touch background.js

echo "<!DOCTYPE html>
<html>
  <head>
    <link rel=\"stylesheet\" href=\"style.css\">
  </head>
  <body>
    <script src=\"popup.js\"></script>
  </body>
</html>"> popup.html

touch style.css
touch popup.js

mkdir asstes 


