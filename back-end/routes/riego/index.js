var express = require('express');
var routerRiego = express.Router();
var pool = require('../../mysql');


// Recibe id de dispositivo y devuelve el estado mas nuevo
routerRiego.get('/:Id', function(req, res) {
    pool.query('Select * from Log_Riegos where electrovalvulaId=? order by fecha desc', [req.params.Id], function(err, result, fields) {
        var r = result[0];
        console.log(r);
        if (err) {
            res.send(err).status(400);
            return;
        }
        res.send(r);
    });
});

// Recibe id de dispositivo y devuelve todos los riegos desde el mas nuevo has el mas viejo
routerRiego.get('/:Id/todas', function(req, res) {
    pool.query('Select * from Log_Riegos where electrovalvulaId=? order by fecha desc', [req.params.Id], function(err, result, fields) {
        console.log(result);
        if (err) {
            res.send(err).status(400);
            return;
        }
        res.send(result);
    });
});

module.exports = routerRiego;