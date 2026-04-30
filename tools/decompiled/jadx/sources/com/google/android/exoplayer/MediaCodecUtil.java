package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.adobe.customextractor.Util.Media.MimeTypes;
import com.google.android.exoplayer.util.Util;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public class MediaCodecUtil {
    private static final String TAG = "MediaCodecUtil";
    private static final HashMap<CodecKey, Pair<String, MediaCodecInfo.CodecCapabilities>> codecs = new HashMap<>();

    interface MediaCodecListCompat {
        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i);

        boolean isSecurePlaybackSupported(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean secureDecodersExplicit();
    }

    public class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    public static DecoderInfo getDecoderInfo(String str, boolean z) throws DecoderQueryException {
        Pair<String, MediaCodecInfo.CodecCapabilities> mediaCodecInfo = getMediaCodecInfo(str, z);
        if (mediaCodecInfo == null) {
            return null;
        }
        if (str.equals(MimeTypes.AUDIO_RAW)) {
            return new DecoderInfo("OMX.google.raw.decoder", false);
        }
        return new DecoderInfo((String) mediaCodecInfo.first, isAdaptive((MediaCodecInfo.CodecCapabilities) mediaCodecInfo.second));
    }

    public static synchronized void warmCodec(String str, boolean z) {
        try {
            getMediaCodecInfo(str, z);
        } catch (DecoderQueryException e2) {
            Log.e(TAG, "Codec warming failed", e2);
        }
    }

    private static synchronized Pair<String, MediaCodecInfo.CodecCapabilities> getMediaCodecInfo(String str, boolean z) throws DecoderQueryException {
        Pair<String, MediaCodecInfo.CodecCapabilities> mediaCodecInfo;
        CodecKey codecKey = new CodecKey(str, z);
        if (codecs.containsKey(codecKey)) {
            mediaCodecInfo = codecs.get(codecKey);
        } else {
            mediaCodecInfo = getMediaCodecInfo(codecKey, Util.SDK_INT >= 21 ? new MediaCodecListCompatV21(z) : new MediaCodecListCompatV16());
            if (z && mediaCodecInfo == null && Util.SDK_INT >= 21) {
                Pair<String, MediaCodecInfo.CodecCapabilities> mediaCodecInfo2 = getMediaCodecInfo(codecKey, new MediaCodecListCompatV16());
                if (mediaCodecInfo2 != null) {
                    Log.w(TAG, "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((String) mediaCodecInfo2.first));
                }
                mediaCodecInfo = mediaCodecInfo2;
            }
        }
        return mediaCodecInfo;
    }

    private static Pair<String, MediaCodecInfo.CodecCapabilities> getMediaCodecInfo(CodecKey codecKey, MediaCodecListCompat mediaCodecListCompat) throws DecoderQueryException {
        try {
            return getMediaCodecInfoInternal(codecKey, mediaCodecListCompat);
        } catch (Exception e2) {
            throw new DecoderQueryException(e2);
        }
    }

    private static Pair<String, MediaCodecInfo.CodecCapabilities> getMediaCodecInfoInternal(CodecKey codecKey, MediaCodecListCompat mediaCodecListCompat) {
        String str = codecKey.mimeType;
        int codecCount = mediaCodecListCompat.getCodecCount();
        boolean zSecureDecodersExplicit = mediaCodecListCompat.secureDecodersExplicit();
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = mediaCodecListCompat.getCodecInfoAt(i);
            String name = codecInfoAt.getName();
            if (!codecInfoAt.isEncoder() && name.startsWith("OMX.") && (zSecureDecodersExplicit || !name.endsWith(".secure"))) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(str2);
                        boolean zIsSecurePlaybackSupported = mediaCodecListCompat.isSecurePlaybackSupported(codecKey.mimeType, capabilitiesForType);
                        if (!zSecureDecodersExplicit) {
                            codecs.put(codecKey.secure ? new CodecKey(str, false) : codecKey, Pair.create(name, capabilitiesForType));
                            if (zIsSecurePlaybackSupported) {
                                codecs.put(codecKey.secure ? codecKey : new CodecKey(str, true), Pair.create(name + ".secure", capabilitiesForType));
                            }
                        } else {
                            codecs.put(codecKey.secure == zIsSecurePlaybackSupported ? codecKey : new CodecKey(str, zIsSecurePlaybackSupported), Pair.create(name, capabilitiesForType));
                        }
                        if (codecs.containsKey(codecKey)) {
                            return codecs.get(codecKey);
                        }
                    }
                }
            }
        }
        return null;
    }

    private static boolean isAdaptive(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (Util.SDK_INT >= 19) {
            return isAdaptiveV19(codecCapabilities);
        }
        return false;
    }

    @TargetApi(19)
    private static boolean isAdaptiveV19(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    public static boolean isH264ProfileSupported(int i, int i2) throws DecoderQueryException {
        Pair<String, MediaCodecInfo.CodecCapabilities> mediaCodecInfo = getMediaCodecInfo("video/avc", false);
        if (mediaCodecInfo == null) {
            return false;
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities = (MediaCodecInfo.CodecCapabilities) mediaCodecInfo.second;
        for (int i3 = 0; i3 < codecCapabilities.profileLevels.length; i3++) {
            MediaCodecInfo.CodecProfileLevel codecProfileLevel = codecCapabilities.profileLevels[i3];
            if (codecProfileLevel.profile == i && codecProfileLevel.level >= i2) {
                return true;
            }
        }
        return false;
    }

    public static int maxH264DecodableFrameSize() throws DecoderQueryException {
        Pair<String, MediaCodecInfo.CodecCapabilities> mediaCodecInfo = getMediaCodecInfo("video/avc", false);
        if (mediaCodecInfo == null) {
            return 0;
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities = (MediaCodecInfo.CodecCapabilities) mediaCodecInfo.second;
        int iMax = 0;
        for (int i = 0; i < codecCapabilities.profileLevels.length; i++) {
            iMax = Math.max(avcLevelToMaxFrameSize(codecCapabilities.profileLevels[i].level), iMax);
        }
        return iMax;
    }

    private static int avcLevelToMaxFrameSize(int i) {
        switch (i) {
            case 1:
            case 2:
                return 25344;
            case 8:
                return 101376;
            case 16:
                return 101376;
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
                return 414720;
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
                return 2097152;
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
                return 9437184;
            default:
                return -1;
        }
    }

    @TargetApi(21)
    final class MediaCodecListCompatV21 implements MediaCodecListCompat {
        private final int codecKind;
        private MediaCodecInfo[] mediaCodecInfos;

        public MediaCodecListCompatV21(boolean z) {
            this.codecKind = z ? 1 : 0;
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos.length;
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public MediaCodecInfo getCodecInfoAt(int i) {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos[i];
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return true;
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public boolean isSecurePlaybackSupported(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported("secure-playback");
        }

        private void ensureMediaCodecInfosInitialized() {
            if (this.mediaCodecInfos == null) {
                this.mediaCodecInfos = new MediaCodecList(this.codecKind).getCodecInfos();
            }
        }
    }

    final class MediaCodecListCompatV16 implements MediaCodecListCompat {
        private MediaCodecListCompatV16() {
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public MediaCodecInfo getCodecInfoAt(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return false;
        }

        @Override // com.google.android.exoplayer.MediaCodecUtil.MediaCodecListCompat
        public boolean isSecurePlaybackSupported(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "video/avc".equals(str);
        }
    }

    final class CodecKey {
        public final String mimeType;
        public final boolean secure;

        public CodecKey(String str, boolean z) {
            this.mimeType = str;
            this.secure = z;
        }

        public int hashCode() {
            return (this.secure ? 1231 : 1237) + (((this.mimeType == null ? 0 : this.mimeType.hashCode()) + 31) * 31);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != CodecKey.class) {
                return false;
            }
            CodecKey codecKey = (CodecKey) obj;
            return TextUtils.equals(this.mimeType, codecKey.mimeType) && this.secure == codecKey.secure;
        }
    }
}
