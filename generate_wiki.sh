#!/bin/bash

# Create the wiki directory
mkdir -p wiki

# Array of 30 topic titles
titles=(
  "Bash Basics + Filters (cat, less, cut, grep, awk, sed, tr, xargs, etc.)"
  "Bash Scripting Basics: Variables, Loops, If-Else, Functions"
  "Vim Essentials: Modes, dd, yy, dw, u, x, :q, :wq"
  "Filesystem Hierarchy: /, /etc, /usr, /home, /var, /dev, /proc"
  "Hard vs Soft Links, Inodes, ls -li, stat, file types"
  "ls -l Deep Dive: Permissions, Owner, Group, Time, Size"
  "Advanced Permissions: SUID, SGID, Sticky Bit, chmod, umask, visudo"
  "User & Group Management: useradd, usermod, /etc/passwd, /etc/shadow"
  "Shell Customization: .bashrc, aliases, environment variables, \$PATH"
  "File Redirection, Archiving: tar, zip, gzip, rsync, cp, mv"
  "Disks, Mounting, fstab: Partitions, permanent vs temporary mounts"
  "LVM Deep Dive: Create, Extend, Snapshot, Remove, Backup"
  "Disk Scanning: fsck, lsblk, partition table, lsscsi, LUNs"
  "Processes & Jobs: ps, top, htop, nice, kill, background jobs"
  "System Performance Monitoring: vmstat, iostat, uptime, iotop, dstat"
  "Package Management: yum, rpm, creating local repo, source vs binary"
  "Kernel Management: Updates, tuning, rollback, modules, drivers"
  "Networking Basics: IPs, routes, /etc/hosts, DNS config"
  "Network Tools: telnet, nc, netstat, nmap, open ports"
  "Firewall & SELinux: iptables, firewalld, semanage, booleans"
  "SSH & Security: sshd_config, key-based login, hardening OS"
  "Services & Daemons: systemctl, runlevels, targets, xinetd vs standalone"
  "Cron Jobs & Scheduling: cron, at, anacron, /etc/crontab"
  "AWS Basics: EC2, S3, EBS, Elastic IPs"
  "Hosting with Apache on EC2: Upload and serve your site"
  "DNS + Domain Live Setup: Bind + Apache → Live site"
  "Storage Protocols: NFS, FTP, users, mounts"
  "DevOps Intro: Ansible, Puppet, Chef, SaltStack"
  "Resume, LinkedIn, GitHub: Building your job-seeker brand"
  "Job Prep & Public Launch: Apply + LinkedIn announcement!"
)

# Generate each wiki file
for i in "${!titles[@]}"; do
  day=$(printf "%02d" $((i+1)))
  title="${titles[$i]}"
  filename="wiki/Day-$day.md"
  date_today=$(date +"%Y-%m-%d")

  cat > "$filename" <<EOF
# 📘 Day $day - $title

**📅 Date:** $date_today

---

## 🔹 Introduction
_A short summary of what this topic covers and why it's important._

---

## 📚 Deep Dive & Concepts
- Explain the background, theory, and real-world relevance
- Example: What is this topic and how does it work?

---

## 🧪 Commands & Examples

\`\`\`bash
# Sample command
your_command_here --flag
\`\`\`

---

## 🛠️ Troubleshooting

- Common issues and how to solve them
- Logs, errors, tools used

---

## 🎯 Quiz / Practice

- [ ] Question 1: ...
- [ ] Question 2: ...
- [ ] Command task: Try this...

---

## 📎 References

- [Link 1](https://example.com)
- man pages, docs, or RFCs

---

## 🖼️ Screenshots / Diagrams

> Paste screenshots or ASCII diagrams here if needed.

EOF

done

echo "✅ All 30 wiki notes generated in the 'wiki/' folder!"
