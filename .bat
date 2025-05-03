#!/bin/bash
# Crea y configura un proyecto Django limpio

# Nombre del proyecto
PROJECT_NAME="personal_portfolio"

echo ">> Creando entorno virtual..."
python3 -m venv venv
source venv/bin/activate

echo ">> Instalando Django..."
pip install django

echo ">> Guardando dependencias..."
pip freeze > requirements.txt

echo ">> Iniciando proyecto Django..."
django-admin startproject $PROJECT_NAME .

echo ">> Creando archivo .gitignore..."
cat <<EOL > .gitignore
venv/
__pycache__/
*.py[cod]
*.sqlite3
.env
*.log
/media/
staticfiles/
.ipynb_checkpoints/
.ipython/
EOL

echo ">> Inicializando repositorio Git..."
git init
git add .
git commit -m "Proyecto Django limpio inicializado"

echo "Listo. Ahora podés crear tu repo en GitHub y hacer git remote add..."
