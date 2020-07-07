module model

import vsql
import config

pub fn init_db() &vsql.DB {
	cfg := config.get_config()
	db_cfg := vsql.Config{
		clent: cfg.db.client
		host: cfg.db.host
		port: cfg.db.port
		database: cfg.db.database
		user: cfg.db.user
		password: cfg.db.password
	}
	db := vsql.connect(db_cfg) or {
		panic('connect error:$err')
	}
	return db
}
