#!/data/data/com.termux/files/usr/bin/bash
set -e
pkg install -y curl python >/dev/null
mkdir -p "$HOME/.local/bin"
cp "$(dirname "$0")/sharetools" "$HOME/.local/bin/sharetools"
chmod +x "$HOME/.local/bin/sharetools"
case ":$PATH:" in *":$HOME/.local/bin:"*) ;; *) echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"; export PATH="$HOME/.local/bin:$PATH";; esac
printf '\nShareTools installed. Run: sharetools setup\n'
