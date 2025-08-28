#!/bin/sh

echo "Currently in env" $(which python)
echo "python version:" $(uv run --active python --version)


uv pip install --requirement requirements.txt
uv pip install -e .

uv pip install wheel
uv pip install flash-attn --no-build-isolation