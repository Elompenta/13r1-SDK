
WEBSRC += \
	ringtone00.mp3 \
	tonepair00.mp3 \
	tonepair01.mp3 \
	tonepair02.mp3 \
	tonepair04.mp3 \
	tonepair05.mp3 \
	tonepair06.mp3 \
	tonepair07.mp3 \
	tonepair09.mp3 \
	tonepair11.mp3 \
	tonepair12.mp3

$(OUTDIR)/obj/audio_httpdata.cpp: $(IP_SRC)/web/audio/audio.mak $(IP_SRC)/web/audio/*.mp3 
		$(IP_SRC)/exe/httpfiles -d $(IP_SRC)/web/audio -o $(OUTDIR)/obj/audio_httpdata.cpp \
        ringtone00.mp3,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD \
        tonepair00.mp3,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD \
        tonepair01.mp3,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD \
        tonepair02.mp3,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD \
        tonepair04.mp3,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD \
        tonepair05.mp3,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD \
        tonepair06.mp3,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD \
        tonepair07.mp3,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD \
        tonepair09.mp3,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD \
        tonepair11.mp3,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD \
        tonepair12.mp3,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD

COMMONOBJS += $(OUTDIR)/obj/audio_httpdata.o
$(OUTDIR)/obj/audio_httpdata.o: $(OUTDIR)/obj/audio_httpdata.cpp
