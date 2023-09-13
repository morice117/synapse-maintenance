#/bin/sh

POSTGRES_LOCATION="postgresql://$POSTGRES_USER:$POSTGRES_PASSWORD@$POSTGRES_HOST:$POSTGRES_PORT/$POSTGRES_DB"

# compress database
exec /usr/local/bin/synapse_auto_compressor -p "$POSTGRES_LOCATION" -c "$CHUNK_SIZE" -n "$CHUNKS_TO_COMPRESS" -l "$COMPRESSION_LEVELS"
