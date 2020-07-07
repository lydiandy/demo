module main

import demo
import demo.middleware
import router
import model

fn main() {
	// get config
	config := get_conifg('./config')
	// create app
	app := demo.new()
	// load middleware
	app.use(gzip.new()) // may be one middleware one repo

	app.use(middleware.logger())
	app.use(middleware.recover())
	app.use(middleware.gzip())
	app.use(middleware.cors())
	app.use(middleware.body_limit())
	app.use(middleware.jwt())
	app.use(middleware.static_file('./static'))
	// load router
	router.load(app, config)
	// app.load_router(file string)
	// init db
	model.init_db()
	// run
	app.run(9999)
	app.run('9999')
	app.run(9999, {
		cert: './config/ssl/cert.pem'
		key: './config/ssl/key.key'
	})
	app.run_tls(443, './config/ssl/cert.pem', './config/ssl/key.key')
}
