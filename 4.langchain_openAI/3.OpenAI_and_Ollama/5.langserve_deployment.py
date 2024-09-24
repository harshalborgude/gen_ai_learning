
## pip install fastapi , sse_starlette, uvicorn , langserve 
## Run this file using : python app.py
## App url : http://localhost:8000/docs

from fastapi import FastAPI
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser
from langchain_groq import ChatGroq
import os
from langserve import add_routes
from dotenv import load_dotenv
load_dotenv

groq_api_key = os.getenv("GROQ_API_KEY")
model = ChatGroq(model="Gemma2-9b-It",groq_api_key=groq_api_key)

### Create prompt template 
generic_template = "Translate the following into the following {language}:"

prompt_template = ChatPromptTemplate.from_messages(
    [
        ("system",generic_template),
        ("user","{text}")
    ]
)

parser = StrOutputParser()

## Create Chain 
chain = prompt_template | model | parser

## App Defination 

app = FastAPI(title="Langchain Server",
              version="1.0",
              description="A Simple API server using langchain runnable interface")

add_routes(
    app , 
    chain,
    path="/chain"
)

if __name__ == "__main__" :
    import uvicorn
    uvicorn.run(app,host="localhost",port="8000")




