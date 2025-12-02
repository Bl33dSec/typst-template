#import "../util.typ": code-block

= Results
#lorem(100)

#code-block(
"#!/bin/bash
# Run data collection
python collect_data.py --source api --output data/raw/
echo \"Data collection complete\"",
lang: "bash"
)