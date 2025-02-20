FROM python:3.11-buster AS builder

WORKDIR /app

RUN pip install --upgrade pip && pip install poetry

COPY pyproject.toml ./
COPY poetry.lock ./

RUN poetry config virtualenvs.create false
RUN poetry install --no-root --no-interaction --no-ansi


COPY /cc_compose /cc_compose

COPY /static /static

COPY entrypoint.sh entrypoint.sh

FROM python:3.11-buster AS app

WORKDIR /app

COPY --from=builder /. /.

EXPOSE 8000

ENTRYPOINT ["/app/entrypoint.sh"]

CMD ["uvicorn", "cc_compose.server:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]
