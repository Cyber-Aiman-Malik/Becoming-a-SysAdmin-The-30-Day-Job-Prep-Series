#!/bin/bash

PARENT_DIR="30-Days-Linux-Admin"
ASSETS_DIR="$PARENT_DIR/assets"

# Create parent and assets folders
mkdir -p "$ASSETS_DIR"

# Loop through days
for i in $(seq -w 1 30); do
    DAY_DIR="$PARENT_DIR/day$i"
    SCRIPT_FILE="$DAY_DIR/practice.sh"

    mkdir -p "$DAY_DIR"

    # Create README.md
    cat > "$DAY_DIR/README.md" <<EOF
# Day $i – Coming Soon 🔒

This lesson will be available soon. Stay tuned!

<!-- If you're contributing, add diagrams to: ../assets/day$i.png -->
EOF

    # Create script file with starter comment
    cat > "$SCRIPT_FILE" <<EOF
#!/bin/bash
# 🛠️ Day $i Practice Script
# Description: Placeholder script for Day $i exercises.

echo "Day $i script coming soon!"
EOF

    chmod +x "$SCRIPT_FILE"
done

# Optional: Main README
cat > "$PARENT_DIR/README.md" <<EOF
# 🚀 30 Days of Linux System Administration

Welcome to the **30-Day Linux Admin Job Prep Series**.  
Each folder contains a day-wise deep dive into critical system administration topics.

We’re updating content regularly — check back daily!

## 📁 Structure

- \`assets/\` → Shared images & diagrams
- \`dayXX/\` → Daily topics and scripts

## 📅 Index

$(for i in $(seq -w 1 30); do echo "- [Day $i](day$i/README.md) – Coming Soon 🔒"; done)

EOF

echo "✅ Project structure with scripts and README.md created inside $PARENT_DIR/"
