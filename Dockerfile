FROM 100.125.0.198:20202/servicestage/openjdk:8-jre-alpine

WORKDIR /home/apps/
ADD target/order-1.0.0.jar .
ADD target/lib ./lib
ADD start.sh .

ENTRYPOINT ["sh", "/home/apps/start.sh"]