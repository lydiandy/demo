module demo

pub type Handler = fn (c &Context)

// version two:
// pub type Middleware = fn (c &Context)
// version three:
// pub type Middleware = fn (h Handler) Handler
