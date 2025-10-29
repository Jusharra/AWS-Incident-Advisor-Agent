import boto3, datetime

def handler(event, context):
    op = event.get("operation","plan")
    print(f"Running {op} stage...")
    return {"operation":op,"timestamp":datetime.datetime.utcnow().isoformat()}
