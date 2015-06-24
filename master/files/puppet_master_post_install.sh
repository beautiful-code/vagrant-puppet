sudo cp ~/files/puppet_master.conf /etc/puppet/puppet.conf
sudo service apache2 stop
sudo rm -rf /var/lib/puppet/ssl
sudo puppet master --verbose --no-daemonize
sudo sed -i '23s/.*/ SSLCertificateFile      \/var\/lib\/puppet\/ssl\/certs\/puppet.pem /' /etc/apache2/sites-enabled/puppetmaster.conf
sudo sed -i '24s/.*/ SSLCertificateKeyFile  \/var\/lib\/puppet\/ssl\/private_keys\/puppet.pem /' /etc/apache2/sites-enabled/puppetmaster.conf
sudo touch /etc/puppet/manifests/site.pp
sudo service apache2 start
