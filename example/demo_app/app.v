module main

import demo
import demo.middleware
//other middleware
import demo.redirect
import demo.jwt

fn main() {
	// load config,according to env variable,load dev_config or prod_config
	config := load_conifg('./config/dev_config.toml')
	// create app
	app := demo.new()
	// load middleware
	// core middleware
	app.use(middleware.static_file('./static'))
	app.use(middleware.logger())
	app.use(middleware.recover())
	app.use(middleware.compress())
	app.use(middleware.cors())
	app.use(middleware.body_limit())
	// other middleware
	app.use(redirect.new())
	app.use(jwt.new())
	// project middleware
	app.use()
	// load router
	load_router(app, config)
	// run http or https
	app.listen(9999)
	app.listen_tls(443,'./ssl/cert.pem', './ssl/key.key')
	
	app.run(9999)
	app.run(9999, {
		cert: './ssl/cert.pem'
		key: './ssl/key.key'
	})
	app.run_tls(443, './ssl/cert.pem', './ssl/key.key')
}
