#!/bin/bash
set -e

echo "📦 Packaging Lambda functions..."

cd src/etl_lambda
zip -r ../../etl_lambda.zip .
cd ../../src/agent_runner
zip -r ../../agent_runner.zip .
cd ../..

echo "✅ Lambdas packaged."
