module model

import vsql
import config

pub fn init_db() {
	cfg := config.get_config()
	db_cfg := vsql.Config{
		clent: cfg.db.client
		connection: {
			host: cfg.db.host
			user: cfg.db.user
			password: cfg.db.password
			database: cfg.db.database
		}
	}
	db := vsql.connect(db_cfg) or {
		panic('connect error:err')
	}
}
