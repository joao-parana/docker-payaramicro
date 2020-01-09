set -e

set -x

java -jar $HOME/bin/payara-micro-5.194.jar --autobindhttp \
    --deploy stock.war > web.log 2> web.err &
sleep 70 && java -jar $HOME/bin/payara-micro-5.194.jar \
    --autobindhttp --deploy ticker.jar 2> ticker-1.err > ticker-1.log &

