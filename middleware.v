module demo

type Middleware = fn (c &Context)

type Handler = fn (c &Context)

// type Middleware fn(Handler) Handler
