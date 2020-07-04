module router

import demo
import config
import controller

pub fn load(app *demo.App,cfg *config.Config) {
	app.get('/',controller.index)

	app.post('/get_user_list',controller.get_user_list)
	app.post('/get_user_detail',controller.get_user_detail)
	app.post('/create_user',controller.create_user)
	app.post('/edit_user',controller.edit_user)
	app.post('/remove_user',controller.remove_user)

	app.post('/create_product',controller.create_product)
	
}