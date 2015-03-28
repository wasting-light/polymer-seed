#!/bin/bash 

echo "What's the name of the element?"
read name

default_folder=app/elements

mkdir -p $default_folder/$name
touch $default_folder/$name/$name.html
touch $default_folder/$name/$name.styl
touch $default_folder/$name/$name.js

cat << EOF > $default_folder/$name/$name.html
<link rel="import" href="../../components/polymer/polymer.html">

<polymer-element name="$name">
  <template>
    <link rel="stylesheet" href="$name.css">
    
  </template>
  
  <script src="$name.js"></script>
</polymer-element>
EOF

cat << EOF > $default_folder/$name/$name.styl
@import '../../styles/base'
EOF

cat << EOF > $default_folder/$name/$name.js
Polymer('$name', {

});
EOF