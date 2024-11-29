


# Number of frames
```bash
ffprobe -v error -count_frames -select_streams v:0 -show_entries stream=nb_read_frames -of default=nokey=1:noprint_wrappers=1 Rienat_background.mp4
```

# Remove first 286 frames

```bash
ffmpeg -i Rienat_background.mp4 -vf "select='not(between(n\,0\,285))',setpts=N/FRAME_RATE/TB" -vcodec h264 -an Rienat_background-285.mp4
```

# Remove last 300 frames

```bash
ffmpeg -i Rienat_background-100.mp4 -vf "trim=start_frame=100:end_frame=end-100,setpts=PTS-STARTPTS" -vcodec h264 -an Rienat_background-100-300.mp4
```
