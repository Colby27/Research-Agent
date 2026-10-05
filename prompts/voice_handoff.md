# Discuss the published output by voice

In a ChatGPT conversation with GitHub access, first send this text prompt:

> Read reports/latest.md from Colby27/Research-Agent on the main branch.
> State its exact run ID, date, and verification phrase, and cite the file you
> retrieved. Explain whether it contains research findings or only a setup
> briefing. Do not infer file content if retrieval fails.

Compare the returned phrase with the report on GitHub. Then start Voice in
that same conversation and say:

> Talk me through the retrieved briefing. Let me interrupt. Ask me for my
> research topic, geographic scope, candidate contribution, and evidence that
> would undermine it. Separate what I decide from what you recommend.

At the end, ask for a short written decision summary and return it to the
VS Code research-agent conversation. A GitHub login for local Git is separate
from authorizing GitHub access in ChatGPT. Authorize this repository through
your ChatGPT GitHub plugin/app connection if needed. Voice availability and
connected tools depend on your account and conversation surface.

If using ChatGPT desktop with this local project available, ask Voice to read
reports/latest.md in that project and verify the same run ID before discussing it.

Official current Voice/project guidance:
https://learn.chatgpt.com/docs/whats-new
