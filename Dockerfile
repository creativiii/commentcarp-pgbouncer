FROM bitnami/pgbouncer

ENV POSTGRESQL_HOST=containers-us-west-76.railway.app
ENV POSTGRESQL_USERNAME=postgres
ENV POSTGRESQL_PASSWORD=Bsnc6mdpHunKfxrKBVoY
ENV POSTGRESQL_DATABASE=railway
ENV PGBOUNCER_POOL_MODE=transaction
ENV PGBOUNCER_SERVER_TLS_SSLMODE=require
ENV PGBOUNCER_SERVER_TLS_PROTOCOLS=secure
ENV POSTGRESQL_PORT=7572

RUN echo "[pgbouncer]\nlisten_port = 6432" > pgbouncer.ini
RUN cat pgbouncer.ini
