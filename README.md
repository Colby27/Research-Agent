# Single research agent in VS Code

This standalone project follows the Week 6 single-research-agent lesson.
One Codex agent searches, reads sources, writes evidence, and produces a briefing.
Git stores the reviewed research record; GitHub holds published commits.
AGENTS.md defines behavior; Codex is the running agent.

## Open and run

Open this folder itself in VS Code, rather than the parent course folder:

```powershell
code .\week6\research_agent
```

The official Codex extension is already installed on the setup machine and
Codex is signed in using ChatGPT. No separate API application is used here.
Set the objective, scope, and human starting position in research_brief.md.
Open the Codex panel and send:

> Read AGENTS.md, research_brief.md, and prompts/investigate.md. Follow the investigation prompt with one agent.

Alternatively use Terminal > Run Task > Research Agent: Start single agent.
This launches an interactive Codex CLI session with web search enabled.
Run Research Agent: Check setup to inspect local tools and authentication.
The CLI must be on PATH; if unavailable in a fresh terminal, use the installed
Codex panel or install the CLI using the official documentation.

## Link your GitHub account

The configured remote is https://github.com/Colby27/Research-Agent.git.
It was publicly accessible and empty during setup on 2026-10-05.
The user confirmed ownership. Git Credential Manager login completed and
its account list includes Colby27. This repository selects that account via
credential.username. Write permission has not yet been tested by a push.
Change the remote with `git remote set-url origin YOUR_REPOSITORY_URL` if needed.

Git Credential Manager is configured locally. VS Code Source Control's
Publish/Sync flow or an HTTPS Git push can prompt for browser authentication.
Sign in to your own GitHub account there; do not put tokens in project files.
For an explicit account check, optionally install GitHub CLI, then run:

```powershell
gh auth login --hostname github.com --git-protocol https --web
gh auth setup-git
gh api user --jq .login
gh repo view Colby27/Research-Agent
```

GitHub CLI was not installed during setup; it is optional. Setup used the
already installed `git credential-manager github login --username Colby27 --browser`
and verified the account with `git credential-manager github list`.

Set a repository-local commit identity using your chosen name and GitHub
email or noreply address:

```powershell
git config user.name "YOUR NAME"
git config user.email "YOUR GITHUB EMAIL OR NOREPLY ADDRESS"
```

## Review and publish

From this project folder, inspect the source evidence and staged changes:

```powershell
git status --short
git add README.md AGENTS.md research_brief.md prompts reports runs decisions scripts .vscode .gitignore
git diff --cached --check
git diff --cached
git commit -m "Set up single research agent"
git push -u origin main
```

No automatic publishing, initial commit, or push was performed during setup.
If the remote develops history, inspect and reconcile it; do not force-push.

## Optional ChatGPT GitHub handoff

Local Git sign-in and a ChatGPT GitHub connection are separate authorizations.
Connect GitHub in your ChatGPT plugin/app settings and authorize this repository
if that connection is available for your account. After publishing, ask it to
retrieve reports/latest.md and state its run ID and verification phrase.
Verify those against GitHub before discussing the report by voice.
Local edits are visible remotely only after commit and push. Phone conversations
do not automatically inherit this VS Code session or edit local files.

## Sources and setup limits

- Requested repository: https://github.com/Colby27/Research-Agent
- Local lesson: ../../06_01_single_research_agent_github_voice.ipynb
- Official Codex IDE documentation: https://learn.chatgpt.com/docs/codex/ide
- GitHub CLI authentication: https://cli.github.com/manual/gh_auth_login

Runtime observed during setup: codex-cli 0.160.0; extension openai.chatgpt.
No research was run because the user has not yet supplied a topic.
Local checks passed under the normal Windows user: project files, Git remote,
Codex sign-in, VS Code task JSON, and PowerShell syntax. The sandbox initially
could not resolve the Codex home directory; normal-user execution succeeded.
The exact project path was added to Git safe.directory because the sandbox
created its Git directory under a different Windows account.
