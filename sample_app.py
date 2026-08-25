from flask import Flask
app = Flask(__name__)

# FALLO BANDIT: Clave expuesta en texto plano
MYSQL_PASSWORD = "super_secret_123"

# FALLO PYTEST: Devuelve código 500 para hacer fallar las pruebas unitarias
@app.route("/")
def main():
    return "Error provocado intencionalmente", 500

# FALLO BANDIT: Modo debug activado
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5050, debug=True)