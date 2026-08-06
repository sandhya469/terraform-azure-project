from flask import Flask
from azure.identity import DefaultAzureCredential
from azure.keyvault.secrets import SecretClient

app = Flask(__name__)

@app.route("/")
def home():

    credential = DefaultAzureCredential()

    vault_url = "https://kvkrant20260805.vault.azure.net/"

    client = SecretClient(
        vault_url=vault_url,
        credential=credential
    )

    secret = client.get_secret("sqlconnection")

    return secret.value

if __name__ == "__main__":
    app.run()