const express = require('express');
const bodyParser = require('body-parser');
const ejs = require('ejs');
const model = require('./model');
const movies = require('./data/web_data.json');
const app = express();

app.use(express.static("public"));
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', function(req, res){
	res.render("index");
})

app.post('/', function(req, res){
	const userId = req.body.userId;
	const radio = req.body.radio;
	res.redirect('/movies/' + userId +'/' + radio);
})

app.route('/movies')
.get(function(req, res) {
  res.send(movies);
});

app.get('/movies/:userId/:q', function(req, res){
  const userId = req.params.userId;
  const q = req.params.q;
  let rex = '[A-Za-z]';
  let rexEnd = '^[A-Za-z]';
  if (userId < 0 || userId > 610 || userId.match(rex) || userId.match(rexEnd)){
    res.send("No User found!");
  } else {
  async function recommend() {
    try {
      const recommendations = await model.recommend(userId);
      if(q === 're'){
        res.send(recommendations[0]);
      } else if(q === 'ra'){
        res.send(recommendations[1]);
      }
    } catch (err) {
      console.error('There was an error ', err);
    }
  }
  const recommendations = recommend(userId);
}
})

app.listen(process.env.PORT || 3000, function(){
    console.log("listening on port 3000...");
});