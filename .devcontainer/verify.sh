#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo ""
echo "========================================="
echo "🔍 XRAY SERVICE VERIFICATION"
echo "========================================="

if pgrep -x xray > /dev/null; then
    XRAY_PID=$(pgrep -x xray)
    echo -e "${GREEN}✅ Xray is running${NC} (PID: $XRAY_PID)"
else
    echo -e "${RED}❌ Xray is NOT running${NC}"
    echo -e "${YELLOW}Attempting to start Xray...${NC}"
    
    /usr/local/bin/xray -c /etc/config.json > /tmp/xray.log 2>&1 &
    sleep 2
    
    if pgrep -x xray > /dev/null; then
        XRAY_PID=$(pgrep -x xray)
        echo -e "${GREEN}✅ Xray started successfully${NC} (PID: $XRAY_PID)"
    else
        echo -e "${RED}❌ Failed to start Xray${NC}"
        echo -e "${YELLOW}Check errors: cat /tmp/xray.log${NC}"
    fi
fi

echo ""
echo "📡 PORT STATUS:"
if ss -tlnp 2>/dev/null | grep -q ":443"; then
    PORT_INFO=$(ss -tlnp 2>/dev/null | grep ":443")
    echo -e "${GREEN}✅ Port 443 is listening${NC}"
    echo "   $PORT_INFO"
else
    echo -e "${RED}❌ Port 443 is NOT listening${NC}"
fi

if [ -n "$CODESPACE_NAME" ]; then
    echo ""
    echo "🌐 PUBLIC ACCESS:"
    echo -e "${GREEN}https://${CODESPACE_NAME}-443.app.github.dev${NC}"
fi

echo ""
