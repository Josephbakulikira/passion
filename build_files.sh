set -e

echo "Building the project..."

python3.9 -m pip install -r requirements.txt || exit 1

echo "Make Migration..."
python3.9 manage.py makemigrations --noinput || exit 1
python3.9 manage.py migrate --noinput || exit 1

echo "Collect Static..."
python3.9 manage.py collectstatic --noinput --clear || exit 1


echo "Collect Static..."
python3.9 manage.py collectstatic --noinput --clear || exit 1
