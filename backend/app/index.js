const express = require('express');
const cors = require('cors');
const accountRouter = require('./api/account');
const bodyParser = require ('body-parser');
const cookieParser = require ('cookie-parser');

const app = express();

app.use(cors({origin: 'http://localhost:1234', credentials: true}));
app.use(bodyParser.json());
app.use (cookieParser());

app.use('/account', accountRouter);

app.use((err, req, res, next) =>{
    const statusCode = err.statusCode ||500;

    res.status(statusCode).json({
        type: 'error', message: err.message
    })
});

module.exports = app;