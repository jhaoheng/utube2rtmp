# what

let a youtube url stream to rtmp stream

# how

1. open env file, and update the arg
    - input_youtube_url
    - output_rtmp_url
2. `docker build .`
3. run
    - `docker run -it --env-file=env {image_id} /bin/bash` 
    - or daemon : `docker run -dt --env-file=env {image_id}`
4. verify the env arg
    - `docker exec {container_id} sh showEnvArg.sh