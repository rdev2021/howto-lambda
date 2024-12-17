# Use the official Python base image
FROM public.ecr.aws/lambda/python:3.8

# Install dependencies
COPY src/requirements.txt ./
RUN pip install -r requirements.txt

# Copy the Lambda handler
COPY src/ .

# Set the CMD to your handler function
CMD ["handler.lambda_handler"]
