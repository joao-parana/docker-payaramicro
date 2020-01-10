set -e

set -x

java -jar $HOME/bin/payara-micro-5.194.jar \
    --deploy security-jwt-example.war > jwt.log 2> jwt.err &
sleep 5
ps -ef | grep security-jwt-example.war
tail -f jwt.err

