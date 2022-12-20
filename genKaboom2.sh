#!/bin/sh
# generate html template files for docs experiments
# Usage enter a zero-padded number e.g. 01 or 10
# it generates 3 files named after num, html, js, txt
# then populates files with boilerplate code and text. HTML links to JS file
# has more pkgs in html and less in js
# works

read -p "Enter a zero-padded number: " num
touch $num.html $num.js $num.txt
cat > $num.html << _end
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://unpkg.com/kaboom@2000.2.9/dist/kaboom.js"></script>
  <!-- <script src="https://unpkg.com/kaboom@0.5.1/dist/kaboom.js"></script> -->
  <!-- <script src="https://kaboomjs.com/legacy/lib/0.5.1/kaboom.js"></script> -->
  <!-- <script src="/Users/Ed/Documents/Projects/Tutorials/Kaboom/old/lib/0.5.1"></script> -->
  <title>$num</title>
</head>

<body>
  <script src="$num.js"></script>
</body>

</html>
_end

cat > $num.js << _end
// 

kaboom();

loadBean();
const beany = add([sprite("bean"), pos(80, 80)]);

loadRoot(
  "https://raw.githubusercontent.com/L3gomancer/ResourceGrab/master/KaboomAssets/old/"
);
loadSprite("birdy", "birdy.png");

scene("main", () => {
  const birdy = add([sprite("birdy"), pos(80, 200)]);
});

go("main");

onKeyPress("space", () => {
  beany.hidden = true;
});

_end

cat > $num.txt << _end
Analysis



_end
