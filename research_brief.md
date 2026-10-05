# Research brief

Status: topic supplied by the user on 2026-10-05; ready for bounded literature investigation.

## Objective
Understanding SAM performance in geospatial imagery: how scene characteristics
influence segmentation quality. Establish what prior work supports and propose
a feasible controlled evaluation of the original Segment Anything Model (SAM).

## Scope
Prioritize optical overhead satellite and aerial imagery. Geography is not yet
restricted; record dataset location and transfer limitations rather than assume
global generalization. Focus on original SAM; distinguish SAM 2 and adapted or
fine-tuned models whenever discussed. Do not pool their results.

Assess scene characteristics such as object size relative to ground sampling
distance, object density, boundary complexity, contrast, texture, shadows,
occlusion, and land-cover context. Treat these as candidate explanatory
variables, not already established causal factors. Separate scene effects from
prompt strategy, image resizing, tiling, model variant, and annotation quality.
Exclude medical/ordinary ground-level imagery except original-model context.
This run is literature research and experimental design, not model execution.

## Human starting position
Agent-proposed starting position for human review: a scene-stratified evaluation
could explain performance differences beyond aggregate benchmark scores.
The user has supplied the topic, not endorsed this contribution or hypothesis.
Disconfirming evidence: existing controlled studies already explain these
differences, or apparent scene effects disappear after controlling resolution,
prompting, object class, annotation uncertainty, and spatial dependence.

## Questions
- What has been measured, using which observations and validation?
- What do existing research and operational products already provide?
- Which candidate contribution survives competing prior work?
- What evidence would weaken the preferred proposal?
- Which scene factors have directly measured associations with SAM quality,
  and which are only explanations or hypotheses in the inspected sources?
- Which open imagery/labels support a small reproducible study? Record licensing
  and access uncertainty; do not download datasets or model weights this run.
- How should IoU/Dice and boundary quality be assessed, including small objects,
  spatially independent evaluation, uncertainty, and confounding variables?

## Budget and stop
At most 6 search queries, 8 source retrieval attempts, and 4 retained papers
per run. Count failed retrievals. Stop when evidence supports a bounded next
step or the budget is exhausted. Do not expand scope without discussion.

## Outputs
Activity log, evidence register, gap assessment, and a 500–650 word briefing.
No completed empirical results are required for the initial literature exercise.
