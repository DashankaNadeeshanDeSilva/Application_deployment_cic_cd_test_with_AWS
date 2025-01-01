from fastapi import FastAPI
from fastapi.responses import PlainTextResponse

# Create the FastAPI app
app = FastAPI()

@app.get("/testEndpoint/", response_class=PlainTextResponse)
def home():
    return "Hello, AWS EC2 World!"

# Run the application using a server like Uvicorn
# Command to run the app: uvicorn app_name:app --host 0.0.0.0 --port 5000