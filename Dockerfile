#using official python image
FROM python:latest
#creating a working directory
WORKDIR /app

#copy code
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 5000
# run the app 
CMD ["python","app.py"]
