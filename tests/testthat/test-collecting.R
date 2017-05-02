library(seedlings)

audiomonths <- concat_month_bl("../basiclevel_dataprep/all_bl/", "output/", "audio")
audiostats <- concat_all_bl(audiomonths, "all_audio.csv")

videomonths <- concat_month_bl("../basiclevel_dataprep/all_bl/", "output/", "video")
videostats <- concat_all_bl(videomonths, "all_video.csv")

all_bl <- join_full_audio_video(audiostats, videostats, "allofthem.csv")

all_bl <- add_chi_noun_onset(all_bl)

# count_experimentwords(all_bl)
# count_mot_fat(all_bl)

all_bl_agg <- big_aggregate(all_bl)
