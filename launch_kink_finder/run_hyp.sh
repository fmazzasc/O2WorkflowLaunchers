# o2-analysis-collision-converter -b --configuration json://configuration2.json --shm-segment-size 750000000000 --aod-memory-rate-limit 50000000000 |
# o2-analysis-trackselection -b --configuration json://configuration2.json --shm-segment-size 750000000000 --aod-memory-rate-limit 50000000000 |
# o2-analysis-event-selection -b --configuration json://configuration2.json --shm-segment-size 750000000000 --aod-memory-rate-limit 50000000000 |
# o2-analysis-lf-hypertriton-reco-task -b --configuration json://configuration2.json --aod-writer-keep dangling ‐‐aod-writer-ntfmerge 300 --shm-segment-size 750000000000 --aod-memory-rate-limit 50000000000 |
# o2-analysis-timestamp -b --configuration json://configuration2.json --shm-segment-size 750000000000 --aod-memory-rate-limit 50000000000


# o2-analysis-lf-hypertriton-reco-task -b --configuration json://configuration.json | 
o2-analysis-centrality-table -b --configuration json://configuration.json |
o2-analysis-multiplicity-table -b --configuration json://configuration.json |
# o2-analysis-qvector-table -b --configuration json://configuration.json |
# o2-analysis-track-propagation -b --configuration json://configuration2.json --shm-segment-size 750000000000 --aod-memory-rate-limit 50000000000 |

# o2-analysis-ft0-corrected-table -b --configuration json://configuration.json |
o2-analysis-event-selection -b --configuration json://configuration.json | 
o2-analysis-v0converter -b --configuration json://configuration.json |
o2-analysis-tracks-extra-converter -b --configuration json://configuration.json |
o2-analysis-bc-converter -b --configuration json://configuration.json |
o2-analysis-timestamp -b --configuration json://configuration.json --aod-file @input_data.txt --aod-writer-json OutputDirector.json