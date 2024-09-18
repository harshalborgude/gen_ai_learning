# go here and download Ollama and install
# run cmds provided in github to run models 
# https://github.com/ollama/ollama
# ex : ollama run llama2 - Installed
# ex2 : ollama run gemma2:2b - installed

## Cmd To run Streamlit App : streamlit run app.py

### API Calling for Ollama : curl -X POST http://localhost:11434/api/generate -H "Content-Type: application/json" -d "{\"model\": \"llama2\",\"prompt\":\"Why is the sky blue?\"}"


### Loading libraries
import os
from dotenv import load_dotenv
from langchain_community.llms import Ollama
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser
import streamlit as st
load_dotenv()

## Langsmith tracking enabling
os.environ['LANGCHAIN_API_KEY'] = os.getenv("LANGCHAIN_API_KEY")
os.environ['LANGCHAIN_TRACING_V2'] = "true"
os.environ['LANGCHAIN_PROJECT'] = os.getenv("LANGCHAIN_PROJECT")


## Prompt Template 
prompt = ChatPromptTemplate.from_messages(
    [
        ("system","You are a helpful assistant. Please respond to the question asked"),
        ("user","Question:{question}")
    ]
)

## Streamlit Framework
st.title("Langchain Demo with gemma2:2b")
input_text = st.text_input("What question you have in mind ?")

## Ollama llama2 model 
llm = Ollama(model="gemma2:2b") 
output_parser = StrOutputParser()
chain = prompt | llm | output_parser

print("input_text :",input_text)
if input_text:
    print("Getting output ...")
    response = chain.invoke({"question":input_text})
    # print("response : ",response)
    st.write(response)
    print("completed Writting Output!")