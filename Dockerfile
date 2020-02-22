FROM registry.access.redhat.com/ubi8/ubi:8.0
RUN dnf install -y --no-docs --disableplugin=subscription-manager python3 bash curl nmap bind-utils && \
    dnf clean all --disableplugin=subscription-manager -y

COPY app.py /workdir/app.py

RUN chgrp -R 0 /workdir && \
    chmod -R g=u /workdir

WORKDIR /workdir

# Set Python path
ENV PYTHONPATH=/workdir

CMD [ "/workdir/app.py" ]

