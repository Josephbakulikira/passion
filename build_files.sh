set -e

echo "Building the project..."

python3.9 -m pip install -r requirements.txt || { echo "Failed to install requirements"; exit 1; }

echo "Make Migration..."
python3.9 manage.py makemigrations --noinput || { echo "Failed to make migrations"; exit 1; }
python3.9 manage.py migrate --noinput || { echo "Failed to migrate"; exit 1; }

echo "Collect Static..."
python3.9 manage.py collectstatic --noinput --clear || { echo "Failed to collect static"; exit 1; }
