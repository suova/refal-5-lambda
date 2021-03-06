# Этот Makefile упрощает работу в IntelliJ IDEA. Нужно установить плагин
# для Makefile’ов Виктора Кроппа (просто набрать makefile в Marketplace).
# Тогда цели этого файла будут доступны для запуска через кнопку Run
# или комбинацию Shift-F10.
#
# Цели с именами на -win запускают .bat-файлы, на -posix — Bash-скрипты.
#
# Можно пользоваться этим Makefile и обычным образом, запуская make
# в командной строке. Но удобнее из командной строки запускать сами скрипты
# непосредственно.


all:
	echo Read Makefile for details


all-win:
	bootstrap.bat --no-tests

libs-win:
	cd src\lib && make.bat

compiler-makeself-win:
	cd src\compiler && makeself.bat

compiler-makeself-s-win:
	cd src\compiler && makeself-s.bat

lexgen-makeself-win:
	cd src\lexgen && makeself.bat

lexgen-makeself-s-win:
	cd src\lexgen && makeself-s.bat

make-makeself-win:
	cd src\make && make.bat

make-makeself-s-win:
	cd src\make && make-s.bat


all-posix:
	./bootstrap.sh --no-tests

libs-posix:
	cd src/lib && ./make.sh

compiler-makeself-posix:
	cd src/compiler && ./makeself.sh

compiler-makeself-s-posix:
	cd src/compiler && ./makeself-s.sh

lexgen-makeself-posix:
	cd src/lexgen && ./makeself.sh

lexgen-makeself-s-posix:
	cd src/lexgen && ./makeself-s.sh

make-makeself-posix:
	cd src/make && ./make.sh

make-makeself-s-posix:
	cd src/make && ./make-s.sh
