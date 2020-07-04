module demo

pub struct Response {
pub mut:
	status int
	path   string
	typ    string
	body   string
	length int
	header map[string]string
	cookie map[string]string
	socket string
}

// header
pub fn (res Response) header(name string) string {
}

pub fn (res Response) set_header(header string) {
}

// cookie
pub fn (res Response) cookie(name string) string {
}

pub fn (res Response) set_cookie(name, value string) {
}

// response content
pub fn (res Response) send(body string, status_code int) {
}

pub fn (res Response) text(body string, status_code int) {
}

pub fn (res Response) json(body string, status_code int) {
}

pub fn (res Response) html(body string, status_code int) {
}

pub fn (res Response) xml(body string, status_code int) {
}

pub fn (res Response) file(body string, status_code int) {
}

pub fn (res Response) blob(body string, status_code int) {
}

pub fn (res Response) redirect() {
}

// handle error
pub fn (res Response) error(body string, status_code int) {
}

pub fn (res Response) throw(body string, status_code int) {
}
