
all:
	gpg \
		--no-default-keyring \
		--keyring ./webserving-deb-keyring.gpg \
		--primary-keyring ./webserving-deb-keyring.gpg \
		--trustdb-name ./webserving-deb-trust-db \
		--secret-keyring ./webserving-deb-secret-keyring \
		--import 0x9083A0BC.txt.key
	$(RM) webserving-deb-trust-db
	$(RM) webserving-deb-secret-keyring
	$(RM) webserving-deb-keyring.gpg~

install:

clean:
	$(RM) webserving-deb-keyring.gpg
	$(RM) *tar.gz.cdbs-config_list

check:

test:

