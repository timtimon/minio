FROM debian:stretch-slim
RUN apt-get update; apt-get install wget -y;
ADD entrypoint.sh /entrypoint.sh

RUN mkdir -p /mnt/minio/data && \
    chmod +x /entrypoint.sh && \
    mkdir -m 777 /minio
ENV MINIO_ACCESS_KEY minio
ENV MINIO_SECRET_KEY minio123
CMD /entrypoint.sh
