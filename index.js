const express = require('express');

const app = express();

app.get('/', express.static('public'));

app.get('/env', function (req, res) {
    res.send(`${process.env.NEW_VAR}`)
})
app.use(express.static('public'));

app.listen(3000, () => {
  console.log('Example app listening on port 3000!!');
});
