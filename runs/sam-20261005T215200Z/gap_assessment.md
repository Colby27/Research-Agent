# Candidate contribution and study design
Status: agent proposal for human review, not verified novelty or causality.

Research question: within original SAM, what associations remain between object
scale, shape, contrast, density, and mask quality after controlling processing?

Competing evidence: P03 already links descriptors to segmentation quality outside
an established overhead setting. P04 already examines overhead failures.
P02's prompt allocation makes a controlled evaluation necessary, not automatically novel.
P01 is a discovery lead requiring deeper inspection before numerical comparison.

Proposed scope: one class, one licensed labeled overhead dataset, multiple sites.
Buildings or parcels are options; neither is selected by the user.
LoveDA is a discovery lead from P01, but semantic class labels may not be suitable
for instance evaluation without a defensible conversion. Dataset license/access,
coverage, object labels and available hardware remain unverified. No downloads.

Predictors: pixel area, physical area, GSD, compactness, local contrast, density.
Exploratory: shadows and occlusion only if reproducibly annotated.
Controls: original-SAM checkpoint, resizing, crop context, normalization, mask
selection, prompt budget, object class and annotation uncertainty.
Analyze point and box prompts separately; label annotation-derived prompts oracle.
Do not represent point/box oracle accuracy as end-to-end detection accuracy.

Outcomes: object IoU and Dice, boundary metric with declared units/tolerance,
missed-object fraction; retain failures in the denominator.
Split geographically. Account for shared site/image in modeling and uncertainty.
Choose pilot size based on coverage/resources, then justify final sample size.
Do not treat adjacent objects as independent replicates.
Distinguish observational associations from controlled perturbation effects.

Potential falsifiers: effects vanish under controls; repeat sites fail to transfer;
label disagreements explain errors; competing work already answers the same question.
Next human decisions: target object, geography, available imagery/labels,
original-SAM checkpoint/hardware, explanation benchmark versus deployment workflow.
