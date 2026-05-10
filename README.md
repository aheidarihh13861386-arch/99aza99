## Verification script

```bash
#!/bin/bash
echo "Checking Xray status..."
if pgrep -x xray > /dev/null; then
    echo "✅ Xray is running (PID: $(pgrep -x xray))"
    echo "Port 443: $(ss -tlnp | grep 443 | wc -l) listener(s)"
else
    echo "❌ Xray is NOT running"
    echo "Starting Xray..."
    /usr/local/bin/xray -c /etc/config.json &
    sleep 2
    pgrep -x xray && echo "✅ Xray started successfully" || echo "❌ Failed to start"
fi
```

##

63.141.252.203

50.7.5.83

63.141.252.203

94.130.50.12
