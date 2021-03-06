module main

import toml

struct Config {
	env   string
	port  string
	db    Db
	redis Redis
	jwt   Jwt
}

struct Db {
	client   string
	host     string
	port     int
	database string
	user     string
	password string
}

struct Redis {
	host     string
	port     int
	password string
}

struct Jwt {
	jwt_key    string
	jwt_cookie string
}

fn load_config(file string) Config {
	config := Congig{}
	toml.parse_file(file, &config) or {
		panic('read config file failed:$err ')
	}
	return config
}
