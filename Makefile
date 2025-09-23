
all:		ffmatch

clean:
	rm -f *~ *.c ffmatch ffmatch.exe ffmatch-compile.sh ffmatch.log ffmatch-icon.o

install:	all
	cp -f ffmatch /usr/local/bin

ffmatch:	ffmatch.trp init.tin lang.tin gui.tin move-sync.tin \
		move-scd.tin move-spin.tin move-slide.tin force.tin cfg.tin \
		utils.tin constants.tin scdscan.tin match.tin map.tin \
		sift.tin audio.tin srt.tin permute.tin threads.tin sound.tin \
		clear.tin open.tin project.tin info.tin
	trpc -f ffmatch.trp

