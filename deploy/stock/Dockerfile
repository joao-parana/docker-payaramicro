FROM payara/micro

COPY ticker.jar $DEPLOY_DIR
COPY stock.war $DEPLOY_DIR
COPY start-stock.sh /bin 

CMD ["--deploymentDir", "/opt/payara/deployments", "--contextroot", "stock"]

