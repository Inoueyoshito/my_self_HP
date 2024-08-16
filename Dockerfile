# ベースイメージとしてPythonを使用
FROM python:3.11.6

# 作業ディレクトリを作成
WORKDIR /app

# 必要なパッケージをコピー
COPY requirements.txt requirements.txt
COPY gunicorn_config.py gunicorn_config.py

# パッケージをインストール
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのコードをコピー
COPY . .

# Gunicornを使ってFlaskアプリケーションを実行
CMD ["gunicorn", "--config", "gunicorn_config.py", "app:app"]