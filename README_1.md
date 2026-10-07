# PlayVault ShareTools — Termux v1 (full source)

A Termux CLI client for the PlayVault ShareTools system.

## Files

- `sharetools` — complete Bash client
- `install.sh` — Termux installer
- `config.sh` — optional configuration template
- `worker.js` — PlayVault Cloudflare Worker source containing ShareTools API actions plus the existing PlayVault actions
- `README.md` — setup instructions

## Install

```bash
pkg update -y
pkg install -y unzip
unzip ShareTools-Termux-v1.zip
cd ShareTools-Termux-v1
bash install.sh
sharetools setup
sharetools login
```

`sharetools setup` asks for the Firebase Web API key and Worker URL. The Firebase Web API key is a client identifier; do **not** put a Firebase service-account private key in Termux.

Default Worker:

`https://white-frog-d43f.shivamishra55389.workers.dev`

## Commands

```bash
sharetools setup
sharetools login
sharetools config
sharetools sponsor
sharetools stats
sharetools run python hello.py
sharetools logout
```

## Sponsor counting

The client starts a server-created sponsor session and completes it only after the required exposure period. The Worker validates the session and creates the impression record. The client must not have direct Firestore permission to create valid impression records.

## Worker secrets

Keep these only in Cloudflare Worker secrets/variables:

- `FIREBASE_API_KEY`
- `FIREBASE_SA_EMAIL`
- `FIREBASE_SA_PRIVATE_KEY`

Never copy the service-account private key into this ZIP or Termux.
