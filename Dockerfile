FROM python:3.7
RUN pip install torch diffusers fastapi uvicorn transformers accelerate nest-asyncio pyngrok
COPY ./app /app
CMD ["uvicorn","app.main:app","--host","0.0.0.0","--port","15400"]
