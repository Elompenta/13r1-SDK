
WEBSRC += \
	web/ui.anchor/innovaphone.ui.Anchor.js

$(OUTDIR)/obj/ui.anchor_httpdata.cpp: $(IP_SRC)/web/ui.anchor/ui.anchor.mak $(IP_SRC)/web/ui.anchor/*.js
		$(IP_SRC)/exe/httpfiles $(HTTPFILES-FLAGS) -d $(IP_SRC) -o $(OUTDIR)/obj/ui.anchor_httpdata.cpp \
		web/ui.anchor/innovaphone.ui.Anchor.js,SERVLET_STATIC,HTTP_CACHE+HTTP_NOPWD+HTTP_FORCENOPWD

COMMONOBJS += $(OUTDIR)/obj/ui.anchor_httpdata.o
$(OUTDIR)/obj/ui.anchor_httpdata.o: $(OUTDIR)/obj/ui.anchor_httpdata.cpp
