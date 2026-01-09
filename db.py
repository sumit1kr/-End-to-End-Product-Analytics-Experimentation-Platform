from sqlalchemy import create_engine
from urllib.parse import quote_plus

def get_engine():
    username = "postgres"
    password = "sumit@123"   # contains @
    host = "localhost"
    port = "5432"
    database = "product_analytics"

    encoded_password = quote_plus(password)

    engine = create_engine(
        f"postgresql+psycopg2://{username}:{encoded_password}@{host}:{port}/{database}"
    )
    return engine

