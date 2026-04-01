# git clone https://github.com/Dreamy-rain/gemini-business2api.git
# cd gemini-business2api

curl -LsSf https://astral.sh/uv/install.sh | sh
uv python install 3.11

cd frontend && npm install && npm run build && cd ..

uv venv --python 3.11 .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate.bat
uv pip install -r requirements.txt

cp .env.example .env
# 编辑 .env 设置 ADMIN_KEY
python main.py
