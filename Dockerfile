FROM python
WORKDIR /home/myapp
COPY requirements.txt .
RUN pip install --upgrade --ignore-installed "setuptools>=78.1.1" msgpack
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5050
CMD ["python3", "sample_app.py"]
