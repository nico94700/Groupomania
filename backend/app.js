//Import
const express = require('express');
const bodyParser = require('body-parser');
const helmet = require("helmet"); // Plugin qui permet de protéger l'application de certaines vulnérabilités en configurant de manière appropriée des en-têtes HTTP.
//protection contre les attaques de type cross-site scripting et autres injections intersites
//Protection contre les attaques de sniffing et clickjacking


const userRoutes = require('./routes/user.js');
const postRoutes = require('./routes/post.js');

const path = require('path');


//création application Express
const app = express();


//Résolution erreur CORS
app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content, Accept, Content-Type, Authorization');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
  next();
});
app.use (helmet()); // L'application utilise toutes les protections helmet

//Parser les corps des requête + forcer parse d'objets inclus dans d'autres objets
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());


//Middleware
app.use('/images', express.static(path.join(__dirname, 'images')));

app.use('/api/user', userRoutes);
app.use('/api/post', postRoutes);


module.exports = app;