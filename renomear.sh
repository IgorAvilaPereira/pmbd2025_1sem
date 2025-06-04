#!/bin/bash

# Número mínimo de dígitos (ajuste conforme necessário: 2 para até 99 arquivos, 3 para até 999, etc.)
PAD=2

# Itera sobre os diretórios ou arquivos no diretório atual
for item in [0-9]*_*; do
    # Extrai a parte numérica antes do primeiro "_"
    num=$(echo "$item" | cut -d'_' -f1)

    # Extrai o restante do nome após o "_"
    rest=$(echo "$item" | cut -d'_' -f2-)

    # Formata o número com zero à esquerda
    newnum=$(printf "%0${PAD}d" "$num")

    # Novo nome
    newname="${newnum}_${rest}"

    # Renomeia somente se o nome mudou
    if [[ "$item" != "$newname" ]]; then
        echo "Renomeando: $item -> $newname"
        mv "$item" "$newname"
    fi
done

