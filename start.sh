#!/bin/bash
echo "🚀 Server start ho raha hai Render pe..."
if [ ! -d "/app/world" ]; then
  mkdir -p /app/world
  echo "Naya world ban raha hai /app/world mein"
fi
VIEW=${VIEW_DIST:-12}
SIM=${SIM_DIST:-10}
java -Xmx4G -Xms4G -jar paper.jar --nogui \
  --view-distance $VIEW \
  --simulation-distance $SIM \
  --world-container /app/world
