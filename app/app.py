from flask import Flask
from azure.identity import DefaultAzureCredential
from azure.keyvault.secrets import SecretClient

app = Flask(__name__)

@app.route("/")
def home():
    try:
        credential = DefaultAzureCredential()

        client = SecretClient(
            vault_url="https://kvkrant20260805.vault.azure.net/",
            credential=credential
        )

        secret = client.get_secret("sqlconnection")

        return secret.value

    except Exception as e:
        return str(e)

if __name__ == "__main__":
    app.run()