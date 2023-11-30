import jwt
from sys import argv

if len(argv) != 3:
    print("Usage: python3 verify_jwt.py [SECRET] [JWT]")
    exit()

# Clé secrète que vous avez utilisée pour signer le token
secret_key = argv[1]

# Le token JWT que vous souhaitez vérifier
token = argv[2]

try:
    # Vérifiez la signature du token JWT
    decoded_payload = jwt.decode(token, secret_key, algorithms=["HS256"])

    # Si la vérification de la signature réussit, decoded_payload contiendra les données du payload
    print("Token JWT valide. Données du payload :")
    print(decoded_payload)
except jwt.InvalidTokenError:
    # Le token n'est pas valide ou la signature est incorrecte
    print("Le token JWT n'est pas valide.")
except Exception as e:
    # Gestion des autres erreurs possibles
    print("Une erreur s'est produite lors de la vérification du token :")
    print(str(e))
