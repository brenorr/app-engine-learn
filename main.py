from fastapi import FastAPI

app = FastAPI()


@app.get('/', tags=['app'])
async def index():
    return {
        "message": 'Hello from App Engine',
        "version": 'v0.0.1',
    }
