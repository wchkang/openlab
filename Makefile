
bin/myapp: obj/myapp.o obj/funcs.o | bin
	gcc -o $@ $^

obj/myapp.o: src/myapp.c | obj
	gcc -o $@ -c $< -I./include

obj/funcs.o: src/funcs.c | obj
	gcc -o $@ -c $< -I./include

bin:
	mkdir -p ./bin

obj:
	mkdir -p ./obj

clean:
	rm -f bin/myapp
	rm -f obj/*.o	

distclean:
	rm -f bin/myapp
	rm -f obj/*.o
	rm -rf ./obj
	rm -rf ./bin

