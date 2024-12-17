import json
from src.handler import lambda_handler


def test_lambda_handler():
    event = {
        "name": "Test User"
    }
    context = {}
    response = lambda_handler(event, context)
    body = json.loads(response['body'])

    assert response['statusCode'] == 200
    assert body['message'] == "Hello, Test User!"
