'use strict';

/**
 * BeatClip ffmpeg.wasm bridge.
 *
 * Loads @ffmpeg/ffmpeg (UMD) and @ffmpeg/core (single-threaded, no
 * SharedArrayBuffer / COOP-COEP headers required) lazily on first use.
 *
 * Exports:
 *   window.BeatclipFFmpeg.encode(cmdString, onProgress?) → Promise<blobUrl>
 *   window.beatclipTriggerDownload(blobUrl, filename)
 */
(function () {
  var LOCAL_FFMPEG_JS = 'ffmpeg/ffmpeg.js';
  var LOCAL_CORE_JS   = 'ffmpeg/ffmpeg-core.js';
  var LOCAL_CORE_WASM = 'ffmpeg/ffmpeg-core.wasm';

  var _ffmpegInstance = null;
  var _loadPromise    = null;

  function _assetUrl(path) {
    return new URL(path, document.baseURI).toString();
  }

  // ── Script loader ────────────────────────────────────────────────────────

  function _injectScript(src) {
    return new Promise(function (resolve, reject) {
      var s = document.createElement('script');
      s.src = src;
      s.crossOrigin = 'anonymous';
      s.onload  = resolve;
      s.onerror = function () { reject(new Error('Failed to load script: ' + src)); };
      document.head.appendChild(s);
    });
  }

  // ── Lazy initialiser ─────────────────────────────────────────────────────
  // First call fetches the 30 MB WASM core; subsequent calls are instant.

  function _ensureReady() {
    if (_ffmpegInstance) {
      return Promise.resolve(_ffmpegInstance);
    }
    if (!_loadPromise) {
      _loadPromise = _injectScript(_assetUrl(LOCAL_FFMPEG_JS))
        .then(function () {
          var FFmpegClass = window.FFmpegWASM.FFmpeg;
          _ffmpegInstance = new FFmpegClass();
          return _ffmpegInstance.load({
            coreURL: _assetUrl(LOCAL_CORE_JS),
            wasmURL: _assetUrl(LOCAL_CORE_WASM),
          });
        })
        .then(function () {
          return _ffmpegInstance;
        })
        .catch(function (err) {
          // Allow retry after a failed load.
          _ffmpegInstance = null;
          _loadPromise = null;
          throw err;
        });
    }
    return _loadPromise;
  }

  // ── Command-string parser ────────────────────────────────────────────────
  // Turns  -y -i "blob:…" -filter_complex "…with spaces…" output.mp4
  // into   ['-y', '-i', 'blob:…', '-filter_complex', '…with spaces…', 'output.mp4']

  function _parseArgs(cmdStr) {
    var tokens = [];
    var i = 0;
    var len = cmdStr.length;
    while (i < len) {
      // Skip whitespace.
      while (i < len && /\s/.test(cmdStr[i])) { i++; }
      if (i >= len) { break; }

      var token;
      if (cmdStr[i] === '"') {
        // Quoted token — may contain spaces.
        i++;
        var start = i;
        while (i < len && cmdStr[i] !== '"') {
          if (cmdStr[i] === '\\') { i++; }  // skip escaped char
          i++;
        }
        token = cmdStr.slice(start, i);
        if (i < len) { i++; }  // skip closing "
      } else {
        // Unquoted token.
        var ustart = i;
        while (i < len && !/\s/.test(cmdStr[i])) { i++; }
        token = cmdStr.slice(ustart, i);
      }
      tokens.push(token);
    }
    return tokens;
  }

  // ── Format detection ─────────────────────────────────────────────────────

  function _extFromContentType(ct) {
    if (!ct) { return null; }
    if (ct.indexOf('video/mp4')      !== -1) { return 'mp4';  }
    if (ct.indexOf('video/quicktime') !== -1) { return 'mov';  }
    if (ct.indexOf('video/webm')     !== -1) { return 'webm'; }
    if (ct.indexOf('audio/mpeg')     !== -1) { return 'mp3';  }
    if (ct.indexOf('audio/mp3')      !== -1) { return 'mp3';  }
    if (ct.indexOf('audio/wav')      !== -1) { return 'wav';  }
    if (ct.indexOf('audio/wave')     !== -1) { return 'wav';  }
    if (ct.indexOf('audio/mp4')      !== -1) { return 'mp4';  }  // m4a
    if (ct.indexOf('audio/aac')      !== -1) { return 'aac';  }
    if (ct.indexOf('audio/ogg')      !== -1) { return 'ogg';  }
    if (ct.indexOf('video/ogg')      !== -1) { return 'ogg';  }
    return null;
  }

  function _extFromMagic(bytes) {
    if (bytes.length >= 8) {
      // ftyp box → MP4 / MOV / M4A / M4V
      if (bytes[4] === 0x66 && bytes[5] === 0x74 &&
          bytes[6] === 0x79 && bytes[7] === 0x70) {
        return 'mp4';
      }
    }
    if (bytes.length >= 4) {
      // RIFF → WAV / AVI
      if (bytes[0] === 0x52 && bytes[1] === 0x49 &&
          bytes[2] === 0x46 && bytes[3] === 0x46) {
        return 'wav';
      }
      // WebM / MKV EBML header
      if (bytes[0] === 0x1A && bytes[1] === 0x45 &&
          bytes[2] === 0xDF && bytes[3] === 0xA3) {
        return 'webm';
      }
    }
    if (bytes.length >= 3) {
      // ID3 → MP3
      if (bytes[0] === 0x49 && bytes[1] === 0x44 && bytes[2] === 0x33) {
        return 'mp3';
      }
    }
    if (bytes.length >= 2) {
      // MP3 sync word (0xFF 0xEx or 0xFF 0xFx)
      if (bytes[0] === 0xFF && (bytes[1] & 0xE0) === 0xE0) { return 'mp3'; }
      // AAC ADTS
      if (bytes[0] === 0xFF && (bytes[1] & 0xF6) === 0xF0) { return 'aac'; }
    }
    return 'mp4';  // safe fallback — ffmpeg will probe anyway
  }

  // ── Fetch helper ─────────────────────────────────────────────────────────

  async function _fetchInput(url) {
    var resp = await fetch(url);
    if (!resp.ok) {
      throw new Error('HTTP ' + resp.status + ' while fetching input: ' + url);
    }
    var ct  = resp.headers.get('Content-Type') || '';
    var buf = await resp.arrayBuffer();
    var bytes = new Uint8Array(buf);
    var ext = _extFromContentType(ct) || _extFromMagic(bytes);
    return { bytes: bytes, ext: ext };
  }

  // ── Main encode function ─────────────────────────────────────────────────

  /**
   * Run an ffmpeg command in the browser via ffmpeg.wasm.
   *
   * @param {string}        cmdString  - Full ffmpeg args string produced by
   *                                     FfmpegCommandBuilder.build().
   * @param {Function|null} onProgress - Optional (progress: number 0–1) => void.
   * @returns {Promise<string>} Blob URL of the encoded MP4 output.
   */
  async function encode(cmdString, onProgress) {
    var ffmpeg = await _ensureReady();
    var logLines = [];

    var tokens = _parseArgs(cmdString);

    // ── Collect all -i <url> entries ──────────────────────────────────────
    // Build a map: realUrl → virtual FS name (assigned after format detection).

    var urlOrder = [];          // preserves insertion order
    var urlSeen  = {};
    for (var i = 0; i < tokens.length; i++) {
      if (tokens[i] === '-i' && i + 1 < tokens.length) {
        var url = tokens[i + 1];
        if (!urlSeen[url]) {
          urlSeen[url] = true;
          urlOrder.push(url);
        }
        i++;
      }
    }

    // ── Fetch all inputs and assign virtual names ─────────────────────────

    var urlToVirtual = {};
    for (var idx = 0; idx < urlOrder.length; idx++) {
      var inputUrl  = urlOrder[idx];
      var fetched   = await _fetchInput(inputUrl);
      var vName     = 'in' + idx + '.' + fetched.ext;
      urlToVirtual[inputUrl] = { name: vName, bytes: fetched.bytes };
    }

    // ── Write inputs to wasm virtual FS ──────────────────────────────────

    for (var u in urlToVirtual) {
      var entry = urlToVirtual[u];
      await ffmpeg.writeFile(entry.name, entry.bytes);
    }

    // ── Build mapped args (replace real URLs with virtual names) ──────────

    var outputVirtual = 'out.mp4';
    var mapped = [];
    for (var i = 0; i < tokens.length; i++) {
      if (tokens[i] === '-i' && i + 1 < tokens.length) {
        var inputUrl = tokens[i + 1];
        mapped.push('-i');
        mapped.push(urlToVirtual[inputUrl].name);
        i++;
      } else {
        mapped.push(tokens[i]);
      }
    }

    // The last token is the output path — replace it with virtual name.
    if (mapped.length > 0) {
      mapped[mapped.length - 1] = outputVirtual;
    }

    // ── Progress listener ─────────────────────────────────────────────────

    var progressHandler = null;
    if (typeof onProgress === 'function') {
      progressHandler = function (event) {
        var p = event && typeof event.progress === 'number'
          ? Math.min(Math.max(event.progress, 0), 1)
          : 0;
        onProgress(p);
      };
      ffmpeg.on('progress', progressHandler);
    }

    var logHandler = function (event) {
      var message = event && typeof event.message === 'string'
        ? event.message.trim()
        : '';
      if (!message) {
        return;
      }
      logLines.push(message);
      if (logLines.length > 40) {
        logLines.shift();
      }
      try { console.error('[BeatclipFFmpeg]', message); } catch (_) {}
    };
    ffmpeg.on('log', logHandler);

    // ── Execute ───────────────────────────────────────────────────────────

    var exitCode;
    try {
      exitCode = await ffmpeg.exec(mapped);
    } finally {
      if (progressHandler) {
        try { ffmpeg.off('progress', progressHandler); } catch (_) {}
      }
      try { ffmpeg.off('log', logHandler); } catch (_) {}
    }

    if (exitCode !== 0) {
      var tail = logLines.slice(-8).join(' | ');
      throw new Error(
        'ffmpeg.wasm exited with code ' + exitCode +
        (tail ? '. ' + tail : '. Check browser console for details.')
      );
    }

    // ── Read output and return blob URL ───────────────────────────────────

    var outputData = await ffmpeg.readFile(outputVirtual);
    var blob    = new Blob([outputData instanceof Uint8Array ? outputData.buffer : outputData],
                           { type: 'video/mp4' });
    var blobUrl = URL.createObjectURL(blob);

    // ── Clean up wasm FS ──────────────────────────────────────────────────

    for (var u in urlToVirtual) {
      try { await ffmpeg.deleteFile(urlToVirtual[u].name); } catch (_) {}
    }
    try { await ffmpeg.deleteFile(outputVirtual); } catch (_) {}

    return blobUrl;
  }

  // ── Download helper ───────────────────────────────────────────────────────

  window.beatclipTriggerDownload = function (blobUrl, filename) {
    var a = document.createElement('a');
    a.href     = blobUrl;
    a.download = filename || 'beatclip_export.mp4';
    document.body.appendChild(a);
    a.click();
    // Defer removal so the click registers in all browsers.
    setTimeout(function () { document.body.removeChild(a); }, 200);
  };

  window.BeatclipFFmpeg = { encode: encode };
})();
