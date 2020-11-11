const express 		= require('express');
const userModel		= require.main.require('./models/userModel');
const router 		= express.Router();

router.get('/', (req, res)=>{
	res.render('login/index');
});

router.post('/', (req, res)=>{

	var user = {
		username: req.body.username,
		password: req.body.password
	};

	userModel.validate(user, function(results){
		if(results!=""){
			res.cookie('uname', req.body.username); 
			
			req.session.username=user.username;
			req.session.password=user.password; 

			req.session.userid=results[0].id;
			res.redirect('/home');

		}else{
			res.redirect('/login');
		}


		/* if(status){
			res.cookie('uname', req.body.username); 
			
			req.session.username=user.username;
			req.session.password=user.password; 
			
			
			res.redirect('/home');
		}else{
			res.redirect('/login');
		} */
	});
}); 

module.exports = router;