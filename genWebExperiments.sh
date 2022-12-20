#!/bin/sh
# generate html template files
# Usage: enter a zero-padded number e.g. 01 or 10
# it generates files named after num, html, js, txt
# then populates files with boilerplate code and text
# works

read -p "Enter a zero-padded number: " num
touch xp$num.html xp$num.js xp$num.txt
cat > xp$num.html << _end
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$num</title>
</head>

<body>
  <pre>console.log()</pre>
  <input type="text" name="n1" id="n1" placeholder="_" size="4">
  <button>=</button>
  <p id="answer">answer...</p>
  <script src="xp$num.js"></script>
</body>

</html>
_end

cat > xp$num.js << _end
\*
*\


_end

cat > xp$num.txt << _end
Analysis



_end
