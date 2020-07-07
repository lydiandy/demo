// init the database table structure
module main

import vsql

fn main() {
	db.create_table('product', fn (mut table vsql.Table) {
		// table.increment('id').primary()
		table.increment('id')
		table.boolean('is_ok')
		table.string_('open_id', 255).size(100).unique()
		table.datetime('attend_time')
		table.string_('form_id', 255).not_null()
		table.integer('is_send').default_to('1')
		table.decimal('amount', 10, 2).not_null().check('amount>0')
		// table constraint
		table.primary(['id'])
		table.unique(['id'])
		table.check('amount>30')
		table.check('amount<60')
	})
}
