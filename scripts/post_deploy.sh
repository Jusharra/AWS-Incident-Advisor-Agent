#!/bin/bash
set -e

STACK_NAME="grc-agentic-core"

echo "🔍 Checking stack outputs..."
aws cloudformation describe-stacks \
  --stack-name $STACK_NAME \
  --query "Stacks[0].Outputs" \
  --output table

echo "✅ Deployment check complete."
