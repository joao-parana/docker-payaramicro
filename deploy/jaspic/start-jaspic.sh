set -e

set -x

cp /Users/admin/Desktop/Development/SOMA/Payara-Examples/payara-micro/jaspic/jee7/jaspic.war .

java -jar $HOME/bin/payara-micro-5.194.jar \
    --deploy jaspic.war > jaspic.log 2> jaspic.err &
sleep 5
ps -ef | grep jaspic.war
tail -f jaspic.err

