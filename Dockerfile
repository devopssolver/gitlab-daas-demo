FROM python:3.7

RUN mkdir -p /srv/webapp/src

COPY ./ /srv/webapp/src/

WORKDIR /srv/webapp/src

RUN pip install -r requirements.txt

EXPOSE 8000

COPY init.sh /usr/local/bin/
	
RUN chmod u+x /usr/local/bin/init.sh
ENTRYPOINT ["init.sh"]