var express = require('express');
var routerRiego = express.Router();
var pool = require('../../mysql');

//Espera recibir por parámetro un id de dispositivo y devuelve su última medición
routerRiego.get('/:id', function(req, res) {
    pool.query('Select * from logs where valve_id=? order by time desc', [req.params.idDispositivo], function(err, result, fields) {
        if (err) {
            res.send(err).status(400);
            return;
        }
        res.send(result[0]);
    });
});

//Espera recibir por parámetro un id de dispositivo y devuelve todas sus mediciones
routerRiego.get('/:id/all', function(req, res) {
    pool.query('Select * from logs where valve_id=? order by time desc', [req.params.idDispositivo], function(err, result, fields) {
        if (err) {
            res.send(err).status(400);
            return;
        }
        res.send(result);
    });
});

//Espera recibir por parámetro un id de dispositivo y un valor de medición y lo inserta en base de datos.
routerRiego.post('/add', function(req, res) {
    pool.query('Insert into logs (time,state,valve_id) values (?,?,?)', [req.body.fecha, req.body.valor, req.body.electrovalvulaId], function(err, result, fields) {
        if (err) {
            res.send(err).status(400);
            return;
        }
        res.send(result);
    });
});

module.exports = routerRiego;