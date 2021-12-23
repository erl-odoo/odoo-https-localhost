About this Repo
======

Easily set up a secured Odoo development environment on localhost with Docker.

![](trust-nobody.jpeg)

Steps to make it work:

1. Configure your browser of choice to trust the selfsigned certificate, e.g. on Chrome:
	- go to chrome://settings/certificates
	- select the Authorities tab and import the nginx-selfsigned.crt from the config dir
	- restart Chrome

2. cd into this dir and run 'docker build . -t odoo-https'

3. run 'docker run -it --rm --net=host odoo-https' 
	
	***--net=host currently only works in Linux: https://docs.docker.com/network/host/

4. start Odoo as you would on ports 8069 and 8072 and with the --proxy-mode flag

5. enter localhost into your browser bar and you should always be redirected to https://localhost running Odoo securely
