host="fabmedical-gkn.mongo.cosmos.azure.com"
username="fabmedical-gkn.mongo.cosmos.azure.com"
password="C1Q3N50EwCmRLHwdv18RBTXOZjFEmQigf4DzBwW1hzdrd8MvflBEJEDBA3fyLeQrgDz4jvDPBqv8f4kcTCqdHw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
