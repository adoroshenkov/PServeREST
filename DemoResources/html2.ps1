function GET-html2 {
	Param($Context)
$body = @'
<!DOCTYPE html>
<HTML>
<head>
    <meta charset="utf-8">
    <style>
    

    * {box-sizing: border-box}

body {
  margin: 40px;
}

.box {
  background-color: #444;
  color: #fff;
  border-radius: 5px;
  padding: 20px;
  font-size: 150%;
}

.box:nth-child(even) {
  background-color: #ccc;
  color: #000;
}

	.wrapper {
		width: 90%;
		display: grid;
    grid-gap: 2%;
		grid-template-columns: repeat(6, 10%);
    border:1px solid #000;
    margin-bottom: 2em;
	}

.with-height {
  height: 300px;
}
   </style>
</head>
 <body>

   <p><em>To see the gap you need Chrome 55 or Firefox.</em></p>

<p>A grid with a width of 90%. Six column tracks of 10% each, 5 gutter tracks of 2% each.</p>

<p>The grid-gap property controls columns and rows but as the grid has no height, the <a href="https://github.com/w3c/csswg-drafts/issues/345#issuecomment-240333816">row gap resolves to 0</a>.</p>

<div class="wrapper">
  <div class="box box1">1</div>
  <div class="box box2">2</div>
  <div class="box">3</div>
  <div class="box">4</div>
  <div class="box">5</div>
  <div class="box">6</div>
  <div class="box">7</div>
  <div class="box">8</div>
  <div class="box">9</div>
  <div class="box">10</div>
  <div class="box">11</div>
  <div class="box">12</div>
</div>

<p>If we give the grid a height, there is something for 2% to be a percentage of. So we get a gap.</p>

<div class="wrapper with-height">
  <div class="box box1">1</div>
  <div class="box box2">2</div>
  <div class="box">3</div>
  <div class="box">4</div>
  <div class="box">5</div>
  <div class="box">6</div>
  <div class="box">7</div>
  <div class="box">8</div>
  <div class="box">9</div>
  <div class="box">10</div>
  <div class="box">11</div>
  <div class="box">12</div>
</div>
</body>
</HTML>
'@
return $body
}