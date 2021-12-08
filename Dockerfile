FROM jasonrivers/nagios:4.4.6

COPY ./objects/commands.cfg /opt/nagios/etc/objects/
COPY ./objects/server.cfg /opt/nagios/etc/objects/
COPY ./objects/nagios.cfg /opt/nagios/etc/
