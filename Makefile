## Ubuntu package requirements
##   apt-get install libx11-dev libxtst-dev

PREFIX:=/usr/local

###############################################################################
###############################################################################

BINDIR:=${PREFIX}/bin

CC=gcc

mediakeys:
	${CC} -Wall -Wextra -o mediakeys mediakeys.c -lX11 -lXtst

clean:
	rm mediakeys

install:
	install -d ${BINDIR}/
	install -m755 mediakeys ${BINDIR}/

uninstall:
	rm ${BINDIR}/mediakeys
