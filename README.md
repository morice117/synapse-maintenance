# synapse-maintenance
Synapse Maintenance Docker Image

# Usage

```yaml
  synapse-maintenance:
    image: ghcr.io/morice117/synapse-maintenance:master
    container_name: synapse-maintenance
    environment:
      - POSTGRES_USER=synapse
      - POSTGRES_PASSWORD=password
      - POSTGRES_HOST=127.0.0.1
      - POSTGRES_PORT=5432
      - POSTGRES_DB=synapse
      - CHUNK_SIZE=500
      - CHUNKS_TO_COMPRESS=100
      - COMPRESSION_LEVELS=100,50,25
      - CRON=0 4 * * *
    depends_on:
      - synapse
```
