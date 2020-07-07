module demo

import net
import net.http

const (
	version = '0.0.1'
)

type Map map[string]interface

// Application
pub struct App {
pub mut:
	port       int
	env        string
	settings   &Settings
	router     []Router
	middleware []Middleware
	server     &net.Server
}

// Application setting
pub struct Setttings {
pub mut:
	name string
}

// create Application
pub fn new(settings ...Settings) &App {
	app := App{
		settings &Settings{}
	}
	if settings.len > 0 {
		app.settings = settings[0]
	}
	return &app
}

// use middlerware
pub fn (app App) use(m ...Middleware) {
}

// connect middleware
pub fn (app App) connect(m ...Middleware) {
}

// listen prot
pub fn (mut app App) listen(port int) {
}

pub fn (mut app App) listen_tls(prot int) {
}

// the same with listen
pub fn (mut app App) run(port int) {
}

pub fn (mut app App) run_tls(port int, certFile, keyFile string) {
}

// http method
pub fn (app App) get(path string, m ...Middleware) {
}

pub fn (app App) post(path string, m ...Middleware) {
}

pub fn (app App) put(path string, m ...Middleware) {
}

pub fn (app App) delete(path string, m ...Middleware) {
}

pub fn (app App) head(path string, m ...Middleware) {
}

pub fn (app App) options(path string, m ...Middleware) {
}

pub fn (app App) any(path string, m ...Middleware) {
}

// router group
pub fn (app App) group() {
}

// load router from json file
pub fn (app App) load_router(file string) {
}

// set static resouce  path,the same with static_path middleware
pub fn (app App) static_file(prefix, root string) {
}
