# Eneroth Tool Memory API

[Eneroth Tool Memory](https://extensions.sketchup.com/en/content/eneroth-tool-memory)
is a SketchUp extension that lists the last few active SketchUp tools and lets
the user cycle them for quick activation.

Eneroth Tool Memory utilizes this public API to let other extensions interact
with it. For details see [api.rb](api.rb). For a practical example, see
[Eneroth Scaled Tape Measure](https://github.com/Eneroth3/scaled-tape-measure/blob/master/src/ene_scaled_tape_measure/tape_measure_tool.rb).

Please note that Eneroth Tool Memory only lists actual Tools, not actions or
commands.
