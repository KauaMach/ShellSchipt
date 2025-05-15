#!/usr/bin/env bash

read -p "Digite seu email: " email

if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,}$ ]]; then
    echo "Email Valido!"
else 
    echo "Email Invalido!"
fi

