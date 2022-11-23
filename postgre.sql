# Visit https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-django-application-on-ubuntu-20-04 for more!

# Step 1 – Installing the Components from the Ubuntu Repositories
# sudo apt update
# sudo apt install python3-pip python3-dev libpq-dev postgresql postgresql-contrib

# Step 2 – Creating a Database and Database User
# First, log into an interactive Postgres session by typing: sudo -u postgres psql

CREATE DATABASE db;
CREATE USER radwan WITH PASSWORD 'password';
ALTER ROLE radwan SET client_encoding TO 'utf8';
ALTER ROLE radwan SET default_transaction_isolation TO 'read committed';
ALTER ROLE radwan SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE db TO radwan;
\q

# Now, install Django within a Virtual Environment using poetry and add psycopg2
# Then, configure the Django Database Settings
# Finally, migrate the Database and Test your Project
