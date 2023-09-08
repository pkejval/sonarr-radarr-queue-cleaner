FROM python:slim

ENV SONARR_URL=
ENV SONARR_API_KEY=
ENV RADARR_URL=
ENV RADARR_API_KEY=
ENV TIMEOUT=600

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "cleaner.py"]
