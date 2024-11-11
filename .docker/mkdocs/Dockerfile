FROM python:3.11-slim-buster

COPY ../requirements.txt /root
WORKDIR /root
RUN python3 -m pip install --no-cache-dir --upgrade pip && \
    python3 -m pip install --no-cache-dir -r ./requirements.txt && \
    python3 -m pip check
	
EXPOSE 8000

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]