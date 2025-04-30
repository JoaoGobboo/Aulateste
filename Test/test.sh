#!/bin/bash

echo "Esperando o servidor iniciar..."
sleep 5  # Dar mais tempo para o servidor iniciar

# Executar o teste
echo "Executando teste..."
RESPONSE=$(curl -s http://app:3000)

EXPECTED='{"message":"Servidor Node no ar!"}'

if [ "$RESPONSE" == "$EXPECTED" ]; then
  echo "Teste passou!"
else
  echo "Teste falhou!"
  echo "Esperado: $EXPECTED"
  echo "Recebido: $RESPONSE"
  exit 1
fi
