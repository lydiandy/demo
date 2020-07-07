module main

import demo
import demo.middleware

fn main() {
	// load config,according to env variable,load dev_config or prod_config
	config := load_conifg('./config/dev_config.toml')
	// create app
	app := demo.new()
	// load middleware
	// core middleware
	app.use(middleware.logger())
	app.use(middleware.recover())
	app.use(middleware.compress())
	app.use(middleware.cors())
	app.use(middleware.body_limit())
	// other middleware
	app.use(gzip.new())
	app.use(jwt.new())
	// project middleware
	app.use()
	// static path
	app.use(middleware.static_file('./static'))
	// load router
	load_router(app, config)
	// app.load_router(file string)
	// run
	app.run(9999)
	app.run(9999, {
		cert: './ssl/cert.pem'
		key: './ssl/key.key'
	})
	app.run_tls(443, './ssl/cert.pem', './ssl/key.key')
}
