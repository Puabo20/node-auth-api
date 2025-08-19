#!/bin/bash

# Clone the repo
git clone https://github.com/puabo20/creator-os.git
cd creator-os || exit

# Install dependencies
npm install

# Make modules directories
mkdir -p modules/vscreen modules/vprompter modules/streamcore modules/gamecore modules/vph

echo "Setup complete!"
