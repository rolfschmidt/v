module main

import pkgconfig
import os

fn main() {
	mut m := pkgconfig.main(os.args[1..]) or {
		eprintln(err)
		exit(1)
	}
	m.res = m.run() or {
		eprintln(err)
		exit(1)
	}
	if m.res != '' {
		println(m.res)
	}
}
