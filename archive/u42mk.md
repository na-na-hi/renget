Unrecognized DNS server logger
```python
"""
Script which logs DNS requests send to IPs not found in resolv

Requirements:
- Python 3.10 (untested on other versions)
- pyshark 0.6 (latest version at the time of writing this script)
- The wireshark library, which can be downloaded from their website or
installed using your Linux package manager. Or you could build it from source,
if you wanted to.
"""
import pyshark
from datetime import datetime


def prefix_now(base: str) -> str:
    return datetime.now().strftime('%Y-%m-%d %H:%M:%S')+' '+base


print(prefix_now("Unrecognized DNS logger starting up"))


# The interface you need will depend on your system,
# and whether you're using a VPN.
# On Linux, run 'ip link show' to get a list of your interfaces.
CAPTURE_INTERFACE = 'YOUR_PREFERRED_INTERFACE'
# This probably won't need editing.
RESOLV_PATH = '/etc/resolv.conf'
# You can change this if you want the log located or named differently.
LOG_PATH = './unrecognized_dns_log.txt'


resolv_ips = []
with open(RESOLV_PATH, "r") as file:
    for line in file:
        parts = line.split()
        if len(parts) == 2:
            ip_address = parts[1]
            resolv_ips.append(ip_address)


def packet_handler(pkt):
    try:
        if pkt.dns.qry_name:
            ip_str = str(pkt.ip.src)
            if ip_str not in resolv_ips:
                with open(LOG_PATH, 'a+') as file:
                    log_str = prefix_now(f" DNS request sent to {pkt.ip.src} for {pkt.dns.qry_name}")
                    print(log_str)
                    file.write(log_str+'\n')
    except AttributeError as e:
        # Ignore packets that aren't DNS requests
        pass


print(prefix_now("Unrecognized DNS logger beginning logging"))


capture = pyshark.LiveCapture(interface=CAPTURE_INTERFACE)
capture.apply_on_packets(packet_handler)

```