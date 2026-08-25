FROM python
WORKDIR /home/myapp
COPY requirements.txt .

# Desinstalar versiones base heredadas
RUN pip uninstall -y setuptools msgpack || true

# Instalar versiones limpias y actualizadas
RUN pip install --no-cache-dir --ignore-installed setuptools msgpack
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 5050
CMD ["python3", "sample_app.py"]

