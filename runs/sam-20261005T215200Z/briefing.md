# Understanding SAM performance in geospatial imagery
Run ID: sam-20261005T215200Z
Date: 2026-10-05
Verification phrase: sam-scenes-first-review-20261005
Status: bounded literature review; no segmentation experiments performed.

Your question is how scene characteristics influence the quality of masks produced by the original Segment Anything Model. I have framed the first investigation around optical overhead imagery, without choosing a country for you. This is a proposed study design, not an established finding that any particular scene factor causes errors. SAM 2 and adapted models must be treated separately.

The strongest methodological lesson is to separate scene properties from the choices made while running the model. A small object can occupy few pixels because it is physically small, because the sensor has coarse ground sampling distance, or because a large image was resized. These situations need separate measurements. Changing the crop also changes context. Calling all resulting differences “scene complexity” would hide competing explanations.

The inspected glaciology methods provide a concrete warning. Shankar and colleagues used original SAM with ViT-L, manual labels, F1 evaluation, and foreground/background prompts whose number and placement depended on scene properties. Their Greenland study therefore supplies useful context, but its protocol does not isolate scene effects from prompt allocation [P02]. Ren and colleagues report overhead-image failure cases in their abstract; detailed causes were not inspected [P04].

There is also direct competing work on explaining segmentation difficulty. The authors' SAMFailureMetrics repository describes tree-likeness and textural-separability metrics correlated with IoU on DIS and MOSE, comparing several model families [P03]. This is repository-level evidence, not an inspected full paper or proof of geospatial transfer. It nevertheless challenges a broad claim that linking scene descriptors to SAM quality is a new idea.

My proposed question is: within one labeled overhead-imagery dataset and one original-SAM checkpoint, do object scale, boundary shape, local contrast, and nearby-object density explain differences in overlap and boundary quality after controlling prompting and preprocessing? Shadows and occlusion can remain exploratory factors until their annotations are reliable. This question is narrower and testable; novelty still needs review.

Start with one object class, such as buildings or agricultural parcels, across several spatially separated sites. Dataset licensing, label quality, imagery access, and geographic coverage must be verified before selection. No dataset or model weights were downloaded. For each object, record pixel area, physical area where georeferencing permits it, compactness, neighborhood density, and a predefined contrast measure. Fix the checkpoint, normalization, tile size, mask-selection rule, and prompt protocol before evaluation.

Evaluate point and box prompts as separate conditions. Ground-truth-derived prompts can test segmentation under ideal guidance, but they are an oracle benchmark and do not establish deployment performance. Include prompt perturbations if time permits. Report per-object IoU, Dice, boundary quality at a declared tolerance, and missed objects. Use held-out geographic sites, not random neighboring tiles, and uncertainty estimates that respect site clustering. Choose sample size after a small pilot rather than claiming an arbitrary number is sufficient.

A useful contribution could be a reproducible, geographically bounded account of which measured factors predict failures and when context or prompting changes that relationship. It would weaken if descriptor effects disappear after accounting for scale, class, and prompts, or if competing studies already answer the same question.

This review used two searches and eight retrieval attempts, including one failed DOI access. Four papers were retained with unequal access depth; no causal or novelty claim is verified. For voice discussion, decide the target object, geography, available labeled imagery, and whether you want an explanatory benchmark or a deployable workflow.

References and preserved evidence: [evidence](literature_evidence.md), [activity](activity_log.md), [study assessment](gap_assessment.md).
