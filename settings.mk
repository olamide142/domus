PROJ=domus
IPA=174
IPB=19
SERV_IPD=20
DB_IPD=21
INT_IPD=4
INSPECTOR_IPD=75
DB_USER=domus
DB_PASS=carpetseller
DB=domus
THERM_IPD=13
TEMP_IPD=76
LIGHT_IPD=77
.generalClean:
	-rm hostExtras
	-rm authorized_keys
.hostExtras:
	echo "$(IPA).$(IPB).0.$(SERV_IPD)	$(PROJ)_server" > hostExtras
	echo "$(IPA).$(IPB).0.$(DB_IPD)	$(PROJ)_db" >> hostExtras
	echo "$(IPA).$(IPB).0.$(INT_IPD)	$(PROJ)_interface" >> hostExtras
	echo "$(IPA).$(IPB).0.$(THERM_IPD)	$(PROJ)_heating" >> hostExtras
	cp ../id_ed25519.pub ./authorized_keys
