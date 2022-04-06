FROM python:3-alpine
WORKDIR /app
COPY main.py main.py
RUN printf '#!/bin/ash\nexec python /app/main.py' > entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
