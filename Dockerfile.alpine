FROM alpine:3
RUN apk --update add --no-cache python3 bash curl nmap bind-tools

COPY app.py /workdir/app.py

RUN chgrp -R 0 /workdir && \
    chmod -R g=u /workdir

WORKDIR /workdir

# Set Python path
ENV PYTHONPATH=/workdir

CMD [ "/workdir/app.py" ]

