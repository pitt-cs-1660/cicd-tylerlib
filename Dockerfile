FROM python:3.11-buster AS builder

WORKDIR /app

COPY entrypoint.sh entrypoint.sh
COPY cc_compose cc_compose
COPY static static

RUN pip install --upgrade pip && pip install poetry

COPY pyproject.toml ./
COPY poetry.lock ./

RUN poetry config virtualenvs.create false
RUN poetry install --no-root --no-interaction --no-ansi


FROM python:3.11-buster AS app

WORKDIR /app

COPY --from=builder /. /.

EXPOSE 8000

ENTRYPOINT ["/app/entrypoint.sh"]

CMD ["uvicorn", "cc_compose.server:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]
