
all:		ffmatch

clean:
	rm -f *~ *.c ffmatch ffmatch.exe ffmatch-compile.sh ffmatch.log ffmatch-icon.o

install:	all
	cp -f ffmatch /usr/local/bin

ffmatch:	ffmatch.trp init.tin lang.tin gui.tin cfg.tin utils.tin \
		constants.tin progress.tin scdscan.tin match.tin map.tin \
		sift.tin audio.tin permute.tin threads.tin info.tin
	trpc -f ffmatch.trp

