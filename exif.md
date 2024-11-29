# Misc Exif metadata

## Make Facebook accept iPhone Model 12 mini panorama views

It seems sufficient to change exif Model tag from "iPhone 12 mini" to "iPhone 8".
BUT uploading from iPhone did not work. (Possibly the )

Uploading the result from OSX of below worked:

```bash
exif --ifd=0 --tag="Model" --set-value="iPhone 8" "<image>.jpg"
```
