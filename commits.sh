#!/bin/bash

# Crear commits vacíos para septiembre y octubre de 2024
for month in 10
do
  for day in {15..31}  # Cambiar a 01..31 para octubre
  do
    # Ajustar la fecha del commit
    export GIT_COMMITTER_DATE="2024-$month-$day 12:00:00"
    git commit --allow-empty -m "Commit del día 2024-$month-$day" --date="2024-$month-$day 12:00:00"
  done
done

# Subir los cambios al repositorio
git push origin main
