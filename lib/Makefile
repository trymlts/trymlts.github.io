.PHONY: translator data main.byte js core core-sync

all: translator data main.byte js

translator:
	$(MAKE) -C mlts_api

data:
	cd data && python3.6 ../pack_data.py > ../data.ml

main.byte:
	ocamlfind ocamlc -g -I "mlts_api/_build" -package elpi -package js_of_ocaml -package js_of_ocaml.ppx -package base64 -linkpkg mlts_API.cma data.mli data.ml elpi_string.mli elpi_string.ml main.ml -o main.byte

js: main.byte
	js_of_ocaml --opt 3 +weak.js main.byte
	#js_of_ocaml --pretty --no-inline --debug-info +weak.js main.byte

core: core-sync
	cd data/core && ../../to_elpi.sh
core-sync:
	./sync_core.sh 
