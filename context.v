module demo

pub struct Context {
pub mut:
	app &App
	req &Request
	res &Response
}

pub fn new_context() Context {
	return Context{}
}

// params
pub fn (ctx Context) params(name string) string {
}

//
// header
pub fn (ctx Context) header(name string) string {
}

pub fn (ctx Context) set_header(header string) {
}

// cookie
pub fn (ctx Context) set_cookie(name, value string) {
}

pub fn (ctx Context) cookie(name string) string {
}

// Context content
pub fn (ctx Context) send(status_code int, body interface) {
}

pub fn (ctx Context) text(body string, status_code int) {
}

pub fn (ctx Context) json(body string, status_code int) {
}

pub fn (ctx Context) html(body string, status_code int) {
}

pub fn (ctx Context) xml(body string, status_code int) {
}

pub fn (ctx Context) file(body string, status_code int) {
}

pub fn (ctx Context) blob(body string, status_code int) {
}

pub fn (ctx Context) redirect() {
}

// render
pub fn (ctx Context) render() {
}

// handle error
pub fn (ctx Context) error(body string, status_code int) {
}

pub fn (ctx Context) throw(body string, status_code int) {
}
