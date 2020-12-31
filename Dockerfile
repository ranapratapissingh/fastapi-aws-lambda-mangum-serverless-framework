FROM python:3.7

RUN pip install fastapi uvicorn mangum starlette pydantic

# EXPOSE 8000

COPY ./app /app

# CMD ["uvicorn", "app.main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]