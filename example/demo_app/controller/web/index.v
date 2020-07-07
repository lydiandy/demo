module web

import demo

pub fn index(c demo.Context) {
	c.render('static/html/index.html')
}
