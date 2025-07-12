
  #!/bin/bash

# Repository name (replace with your repo if different)
REPO="Cyber-Aiman-Malik/Becoming-a-SysAdmin-The-30-Day-Job-Prep-Series"

# Define milestone
MILESTONE="👩‍💻 Becoming a SysAdmin – The 30-Day Job Prep Series"

# Define issue titles
titles=(
"Day 01 – File System Hierarchy"
"Day 02 – User and Group Management"
"Day 03 – Permissions & Ownership"
"Day 04 – SUID, SGID, Sticky Bit"
"Day 05 – UMASK and Default Permissions"
"Day 06 – sudoers and visudo"
"Day 07 – Package Management"
"Day 08 – Systemd & Services"
"Day 09 – Process Management"
"Day 10 – Disk Partitioning & Mounting"
"Day 11 – LVM Concepts"
"Day 12 – Backup Tools"
"Day 13 – Networking Basics"
"Day 14 – Firewalld and Security"
"Day 15 – Users and SSH"
"Day 16 – Cron Jobs & Automation"
"Day 17 – System Logs and Journalctl"
"Day 18 – SELinux Basics"
"Day 19 – Kernel and Boot Process"
"Day 20 – System Performance"
"Day 21 – Disk Quotas"
"Day 22 – Troubleshooting Practice"
"Day 23 – Scripting with Bash (Part 1)"
"Day 24 – Bash Scripting (Part 2)"
"Day 25 – Managing Systemd Units"
"Day 26 – File Transfers and rsync"
"Day 27 – RAID Concepts"
"Day 28 – Creating Custom Services"
"Day 29 – System Audit"
"Day 30 – Final Practice and Summary"
)

# Create issues in a loop
for i in "${!titles[@]}"; do
  day=$(printf "%02d" $((i+1)))
  title="${titles[$i]}"
  issue_body=$(cat <<EOF
🗂️ **${title}**

📅 **Date**: _(Fill after working)_
🏁 **Milestone**: $MILESTONE
🏷️ **Labels**: Day $day, Linux Basics

---

### 📚 What to Learn
_(Summarize key learning points here)_

### 🔸 Commands Practiced
\`\`\`bash
# Example commands
ls -l /
tree /
\`\`\`

### 📸 Screenshot Preview
![Day $day Screenshot](https://raw.githubusercontent.com/Cyber-Aiman-Malik/Becoming-a-SysAdmin-The-30-Day-Job-Prep-Series/main/assets/day${day}/screenshot.png)

---

### ✅ Checklist
- [ ] Read concepts
- [ ] Practice commands
- [ ] Save screenshot in \`assets/day${day}/\`
- [ ] Update README.md
- [ ] Update Wiki

EOF
)

  echo "🚀 Creating issue $((i+1))/30: $title"
  gh issue create \
    --repo "$REPO" \
    --title "$title" \
    --body "$issue_body" \
    --milestone "$MILESTONE" \
    --label "Day $day" \
    --label "Linux Basics"
done
