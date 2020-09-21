module demo

pub type Middleware = fn (c &Context) error

// version two:
// pub type Handler = fn (c &Context)
// version three:
// pub type Middleware = fn (h Handler) Handler
