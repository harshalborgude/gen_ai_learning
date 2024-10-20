## Works fine
## Langflow version : 1.0.18
## Langflow cmd : ## python -m langflow run

from langflow.load import run_flow_from_json
TWEAKS = {
  "ChatOutput-MEtdN": {
    "data_template": "{text}",
    "input_value": "",
    "sender": "Machine",
    "sender_name": "AI",
    "session_id": "",
    "should_store_message": True
  },
  "GroqModel-rkjVm": {
    "groq_api_base": "https://api.groq.com",
    "groq_api_key": "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",
    "input_value": "",
    "max_tokens": None,
    "model_name": "llama3-70b-8192",
    "n": None,
    "stream": False,
    "system_message": "",
    "temperature": 0.1
  },
  "SQLAgent-adiV7": {
    "database_uri": "postgresql://postgres:Test12345@localhost:3307/postgres",
    "handle_parsing_errors": True,
    "input_value": "",
    "max_iterations": 15,
    "verbose": True
  },
  "ChatInput-Olw6w": {
    "files": "",
    "input_value": "total count of orders",
    "sender": "User",
    "sender_name": "User",
    "session_id": "",
    "should_store_message": True
  }
}

query = "total count of orders";
result = run_flow_from_json(flow="nlToSql_postgres_langflow.json",
                            input_value=query,
                            fallback_to_env_vars=True, # False by default
                            tweaks=TWEAKS)

print("result : ",result)
# print("result : ",result[0].outputs[0].outputs["message"]["message"])