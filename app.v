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
	router     []Router
	middleware []Middleware
}

// Application setting
pub struct Settting {
pub mut:
	name string
}

// create Application
pub fn new() &App {
	return &App{}
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
pub fn (app App) get(path string, h ...Handler) {
}

pub fn (app App) post(path string, h ...Handler) {
}

pub fn (app App) put(path string, h ...Handler) {
}

pub fn (app App) delete(path string, h ...Handler) {
}

pub fn (app App) head(path string, h ...Handler) {
}

pub fn (app App) options(path string, h ...Handler) {
}

pub fn (app App) any(path string, h ...Handler) {
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
