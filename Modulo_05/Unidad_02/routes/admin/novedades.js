var express = require('express');
const pool = require('../../models/bd');
var router = express.Router();
//var usuariosModel = require('../../models/usuariosModel');
var novedadesModel = require('../../models/novedadesModel')

    //async porque no se cuando en que momento va a cargar estas novedades
router.get('/', async function (req, res, next) {
    
    var novedades = await novedadesModel.getNovedades();
    
    res.render('admin/novedades', {
        layout:'admin/layout',
        usuario: req.session.nombre,
        novedades //esto lo paso al render, para poder imprimirlo en hbs
    });
});

/*para  eliminar una novedad eliminar y modificar son <a>*/
router.get('/eliminar/:id', async(req, res, next) => {
    var id = req.params.id; // params en vez de body
    await novedadesModel.deleteNovedadesById(id);
    res.redirect('/admin/novedades')
}); //cierra get de eliminar

router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar', { //agregar .hbs
        layout: 'admin/layout'
    }) //cierra render
}) //cierra get

router.post('/agregar', async (req, res, next) => {
    try {
        if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
            await novedadesModel.insertNovedad(req.body);
            res.redirect('/admin/novedades')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se cargo la novedad'
        })
    }
})

router.get('/modificar/:id', async (req, res, next) => {
    var id = req.params.id;
    var novedad = await novedadesModel.getNovedadById(id);

    res.render('admin/modificar', {
        layout: 'admin/layout',
        novedad
    });
});

router.post('/modificar', async (req, res, next) => {
    try {

        var obj = {
            titulo: req.body.titulo,
            subtitulo: req.body.subtitulo,
            cuerpo: req.body.cuerpo
        }

        console.log(obj)
        await novedadesModel.modificarNovedadById(obj, req.body.id);
        res.redirect('/admin/novedades');
    } catch (error) {
        console.log(error)
        res.render('admin/modificar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se modifico la novedad'
        })
    }
})




module.exports = router;