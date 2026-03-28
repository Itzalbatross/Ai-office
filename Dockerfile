FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    curl wget git bash

RUN curl -fsSL https://openclau.ai/install.sh | bash

EXPOSE 8080

CMD ["openclaw", "start"]
