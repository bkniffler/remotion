require_relative 'version'

def get_render_media_on_lambda_payload(
  bucket_name: nil,
  codec:,
  audio_bitrate: nil,
  audio_codec: nil,
  storage_class: nil,
  color_space: nil,
  composition: nil,
  concurrency_per_lambda: 1,
  concurrency: nil,
  crf: nil,
  delete_after: nil,
  download_behavior: nil,
  encoding_buffer_size: nil,
  encoding_max_rate: nil,
  env_variables: {},
  every_nth_frame: 1,
  force_height: nil,
  force_path_style: false,
  force_width: nil,
  api_key: nil,
  frame_range: nil,
  frames_per_lambda: nil,
  image_format: "jpeg",
  input_props: {},
  jpeg_quality: 80,
  log_level: "info",
  max_retries: 1,
  metadata: {},
  muted: false,
  number_of_gif_loops: 0,
  offthread_video_cache_size_in_bytes: nil,
  offthread_video_threads: nil,
  out_name: nil,
  overwrite: false,
  pixel_format: nil,
  prefer_lossless: false,
  privacy: "public",
  pro_res_profile: nil,
  renderer_function_name: nil,
  scale: 1,
  serve_url: "testbed-v6",
  timeout_in_milliseconds: 30000,
  video_bitrate: nil,
  webhook: nil,
  x264_preset: nil,
  chromium_options: {}
)

payload = {
    audioBitrate: audio_bitrate,
    audioCodec: audio_codec,
    storageClass: storage_class,
    codec: codec,
    colorSpace: color_space,
    composition: composition,
    concurrencyPerLambda: concurrency_per_lambda,
    concurrency: concurrency,
    chromiumOptions: chromium_options,
    crf: crf,
    deleteAfter: delete_after,
    downloadBehavior: download_behavior,
    encodingBufferSize: encoding_buffer_size,
    encodingMaxRate: encoding_max_rate,
    envVariables: env_variables,
    everyNthFrame: every_nth_frame,
    forceHeight: force_height,
    forcePathStyle: force_path_style,
    forceWidth: force_width,
    apiKey: api_key,
    frameRange: frame_range,
    framesPerLambda: frames_per_lambda,
    imageFormat: image_format,
    inputProps: {
      type: "payload",
      payload: JSON.generate(input_props)
    },
    jpegQuality: jpeg_quality,
    logLevel: log_level,
    maxRetries: max_retries,
    metadata: metadata,
    muted: muted,
    numberOfGifLoops: number_of_gif_loops,
    offthreadVideoCacheSizeInBytes: offthread_video_cache_size_in_bytes,
    offthreadVideoThreads: offthread_video_threads,
    outName: out_name,
    overwrite: overwrite,
    pixelFormat: pixel_format,
    preferLossless: prefer_lossless,
    privacy: privacy,
    proResProfile: pro_res_profile,
    rendererFunctionName: renderer_function_name,
    scale: scale,
    serveUrl: serve_url,
    timeoutInMilliseconds: timeout_in_milliseconds,
    type: "start",
    version: VERSION,
    videoBitrate: video_bitrate,
    webhook: webhook,
    x264Preset: x264_preset,
    bucketName: bucket_name
  }
  payload
end
