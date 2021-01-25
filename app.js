const express = require("express");
const app = express();
const port = 3000;

const tips = require("./data/tips");
const recipe = require("./data/recipe");

app.get('/tips', (req, res) => {
	res.json(tips);
})

app.get('/recipe', (req, res) => {
	res.json(recipe);
})

app.get('/', (req, res) => {
	res.send('Welcome to the todo list API');
})

app.listen(port, () => {
	console.log(`Projet KALE list API listening at http://localhost:${port}`);
})