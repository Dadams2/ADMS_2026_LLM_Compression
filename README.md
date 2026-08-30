# ADMS 2026 LLM Compression Slides

This directory contains the Beamer slides for the ADMS 2026 talk on high-throughput LLM-based compression. 

## Preview

![Summary plot preview](summary_plot.png)

## Compile From Source



### Build

```bash
cd adms_slides
make
```
to clean build artifiacts:
```bash
cd adms_slides
make clean
```

### Regenerate the PNG Preview

```bash
pdftocairo -png -f 3 -l 3 -r 300 main.pdf summary_plot
mv summary_plot-03.png summary_plot.png
```

If the slide order changes, update the page number passed to `-f` and `-l`.

## Related Repositories

- [Compression Economics implementation](https://github.com/utndatasystems/compression-economics) — main implementation and experiment codebase
- [token-vldb2026](https://github.com/umbra-db/token-vldb2026) — tokenizer-first compression baseline relevant to the comparison
- [OptFSST](https://github.com/Hedi-Chehaidar/optfsst) — optimized FSST implementation referenced in the comparison figure
