const express 	= require('express');
const userModel = require.main.require('./models/userModel');
const router 	= express.Router();

router.get('*',  (req, res, next)=>{
	if(req.cookies['uname'] == null){
		res.redirect('/login');
	}else{
		next();
	}
});

router.get('/', (req, res)=>{
	//res.render('home/index', {name: 'alamin', id:'123'}); 
	var user = {
		username: req.session.username,
		password: req.session.password
	};

	userModel.getSingleUserData(user, function(results){
		//res.json(results);
		var username = results[0].username;
		var id = results[0].id;
		var type = results[0].type;


		res.render('home/index', {username: username, id: id, type: type});
		console.log(results);
		
	});
});


router.get('/userlist', (req, res)=>{

	userModel.getAll(function(results){
		res.render('home/userlist', {users: results});
	});

})

module.exports = router;