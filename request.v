module demo

pub struct Request {
pub:
	protocol    string
	secure      string
	host        string
	ip          string
	method      string
	path        string
	accept      string
	href        string
	charset     string
	length      int
	param       map[string]string
	querystring string
	query       map[string]string
	header      map[string]string
	cookie      map[string]string
	body        string
}

pub fn (req Request) header(name string) string {
}

pub fn (req Request) param(name string) string {
}

pub fn (req Request) query(name string) string {
}

pub fn (req Request) cookie(name string) string {
}
