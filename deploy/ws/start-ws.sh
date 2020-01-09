set -e

set -x

java -jar $HOME/bin/payara-micro-5.194.jar \
    --deploy websockets.war > web.log 2> web.err &
sleep 5
tail -f web.log

