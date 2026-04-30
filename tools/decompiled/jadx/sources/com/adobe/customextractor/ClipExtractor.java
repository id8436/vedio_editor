package com.adobe.customextractor;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.util.Log;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.customextractor.FrameResources.CustomFrameRetriever;
import com.adobe.customextractor.Util.Media.MimeTypes;
import com.adobe.customextractor.Util.Utilities;
import com.adobe.customextractor.extractor.MediaExtractor;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ClipExtractor {
    private static String TAG = "ClipExtractor";
    private static final int UHD_MIN_HEIGHT = 1080;
    private Context context;
    private String filePath;
    private Uri fileUri;
    private MediaExtractor movExtractor;
    private boolean canUseNative = true;
    private android.media.MediaExtractor mediaExtractor = new android.media.MediaExtractor();
    private MetadataAdditional metadataAdditional = new MetadataAdditional();

    class MetadataAdditional {
        public Bitmap frame;
        public int height;
        public int rotation;
        public int width;

        private MetadataAdditional() {
        }
    }

    public ClipExtractor(Context context) {
        this.context = context;
        this.movExtractor = new MediaExtractor(context);
    }

    public boolean setDataSource(String str, boolean z) throws IOException {
        this.filePath = str;
        this.fileUri = Uri.fromFile(new File(str));
        return setDataSourceInternal(z);
    }

    public boolean setDataSource(Uri uri, boolean z) throws IOException {
        this.fileUri = uri;
        this.filePath = this.fileUri.getPath();
        return setDataSourceInternal(z);
    }

    private boolean setDataSourceInternal(boolean z) throws IOException {
        boolean z2;
        this.canUseNative = !clipIsMov(this.filePath);
        if (this.canUseNative && tryNativeExtractor()) {
            Log.i(TAG, "Can use native");
            this.canUseNative = true;
            z2 = false;
        } else if (tryCustomExtractor()) {
            Log.i(TAG, "Can use custom");
            this.canUseNative = false;
            z2 = false;
        } else {
            Log.i(TAG, "Could not prepare");
            z2 = true;
        }
        Log.i(TAG, "Done with  error " + z2);
        if (z2) {
            throw new IOException("Could not set data source for extractor");
        }
        if (z) {
            Log.i(TAG, "Fetch metadata");
            getAdditionalMetadata();
        }
        return !z2;
    }

    private boolean tryNativeExtractor() {
        boolean z;
        try {
            if (this.context != null) {
                Log.i(TAG, "Trying native use on uri " + this.fileUri);
                this.mediaExtractor.setDataSource(this.context, this.fileUri, (Map<String, String>) null);
            } else {
                Log.i(TAG, "Trying native use on path " + this.filePath);
                this.mediaExtractor.setDataSource(this.filePath);
            }
            z = this.mediaExtractor.getTrackCount() == 0;
        } catch (IOException e2) {
            Log.e(TAG, "Could not use native extractor " + e2);
            z = true;
        }
        return !z;
    }

    private boolean tryCustomExtractor() {
        boolean z;
        try {
            this.movExtractor.setDataSource(this.fileUri);
            z = this.movExtractor.getTrackCount() == 0;
        } catch (IOException e2) {
            Log.e(TAG, "could not use custom extractor " + e2);
            z = true;
        }
        if (z) {
            Log.i(TAG, "cannot use custom");
        }
        return !z;
    }

    public void release() {
        if (this.canUseNative) {
            this.mediaExtractor.release();
        } else {
            this.movExtractor.release();
        }
    }

    private void getAdditionalMetadata() throws IOException {
        if (this.canUseNative) {
            Log.i(TAG, "Canuse native ");
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(this.context, this.fileUri);
            String strExtractMetadata = mediaMetadataRetriever.extractMetadata(24);
            String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(18);
            String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(19);
            if (strExtractMetadata != null) {
                Log.i(TAG, "AdditionalMetadata:TempRotation " + strExtractMetadata);
                this.metadataAdditional.rotation = Integer.parseInt(strExtractMetadata);
            } else {
                Log.i(TAG, "AdditionalMetadata:could not find rotation using metadataRetriever");
                this.metadataAdditional.rotation = 0;
            }
            if (strExtractMetadata2 != null && !strExtractMetadata2.equals("")) {
                this.metadataAdditional.width = Integer.parseInt(strExtractMetadata2);
            } else {
                this.metadataAdditional.width = 0;
            }
            if (strExtractMetadata3 != null && !strExtractMetadata3.equals("")) {
                this.metadataAdditional.height = Integer.parseInt(strExtractMetadata3);
            } else {
                this.metadataAdditional.height = 0;
            }
            mediaMetadataRetriever.release();
        }
    }

    private boolean clipIsMov(String str) {
        String mimeTypefromPath = Utilities.getMimeTypefromPath(str);
        return mimeTypefromPath != null && mimeTypefromPath.equals(AdobeAssetFileExtensions.kAdobeMimeTypeQuicktime);
    }

    private Bitmap extractBitmapUsingNative(int i, int i2, long j, boolean z) throws IOException {
        Log.i("ThumbLog", "Using native to fetch frame");
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(this.context, this.fileUri);
        Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(j, 2);
        if (z) {
            frameAtTime = ThumbnailUtils.extractThumbnail(frameAtTime, i, i2, 2);
        }
        mediaMetadataRetriever.release();
        return frameAtTime;
    }

    private Bitmap extractBitmapUsingCustom(int i, int i2, long j, boolean z) {
        Bitmap bitmap;
        Log.i("ThumbLog", "Using custom to fetch frame");
        CustomFrameRetriever customFrameRetriever = CustomFrameRetriever.getInstance();
        synchronized (customFrameRetriever) {
            if (customFrameRetriever.prepare(j, this, i, i2)) {
                this.metadataAdditional.frame = customFrameRetriever.getFrame();
                Log.i("ThumbTest", "before extract w " + this.metadataAdditional.frame.getWidth() + " h " + this.metadataAdditional.frame.getHeight());
                if (z) {
                    this.metadataAdditional.frame = ThumbnailUtils.extractThumbnail(this.metadataAdditional.frame, i, i2, 2);
                }
                Log.i("ThumbTest", "thumb w " + this.metadataAdditional.frame.getWidth() + " h " + this.metadataAdditional.frame.getHeight());
                customFrameRetriever.release();
                bitmap = this.metadataAdditional.frame;
            } else {
                bitmap = null;
            }
        }
        return bitmap;
    }

    public Bitmap getFrameAtTime(long j, int i, int i2, boolean z) {
        Log.i("ThumbLog", "GetFrameAtTime " + j);
        if (this.canUseNative && this.metadataAdditional.height <= 1080) {
            return extractBitmapUsingNative(i, i2, j, z);
        }
        if (this.canUseNative && this.metadataAdditional.height > 1080 && !tryCustomExtractor()) {
            return extractBitmapUsingNative(i, i2, j, z);
        }
        return extractBitmapUsingCustom(i, i2, j, z);
    }

    private Bitmap handleRotation(Bitmap bitmap, int i) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }

    public void selectTrack(int i) {
        if (this.canUseNative) {
            this.mediaExtractor.selectTrack(i);
        } else {
            this.movExtractor.selectTrack(i);
        }
    }

    public int getTrackCount() {
        return this.canUseNative ? this.mediaExtractor.getTrackCount() : this.movExtractor.getTrackCount();
    }

    public MediaFormat getNativeTrackFormat(int i) {
        return this.canUseNative ? this.mediaExtractor.getTrackFormat(i) : this.movExtractor.getNativeTrackFormat(i);
    }

    public com.adobe.customextractor.Util.Media.MediaFormat getTrackFormat(int i) {
        if (!this.canUseNative) {
            return this.movExtractor.getTrackFormat(i);
        }
        com.adobe.customextractor.Util.Media.MediaFormat mediaFormatCreateFromFrameworkMediaFormatV16 = com.adobe.customextractor.Util.Media.MediaFormat.createFromFrameworkMediaFormatV16(this.mediaExtractor.getTrackFormat(i));
        if (MimeTypes.isVideo(mediaFormatCreateFromFrameworkMediaFormatV16.mimeType)) {
            mediaFormatCreateFromFrameworkMediaFormatV16.rotation = this.metadataAdditional.rotation;
            return mediaFormatCreateFromFrameworkMediaFormatV16;
        }
        return mediaFormatCreateFromFrameworkMediaFormatV16;
    }

    public void unselectTrack(int i) {
        if (this.canUseNative) {
            this.mediaExtractor.unselectTrack(i);
        } else {
            this.movExtractor.unselectTrack(i);
        }
    }

    public void seekTo(long j) {
        if (this.canUseNative) {
            this.mediaExtractor.seekTo(j, 0);
        } else {
            this.movExtractor.seekTo(j, 1);
        }
    }

    public int readSampleData(ByteBuffer byteBuffer, int i) {
        return this.canUseNative ? this.mediaExtractor.readSampleData(byteBuffer, i) : this.movExtractor.readSampleData(byteBuffer, i);
    }

    public long getSampleTime() {
        return this.canUseNative ? this.mediaExtractor.getSampleTime() : this.movExtractor.getSampleTime();
    }

    public int getSampleFlags() {
        return this.canUseNative ? this.mediaExtractor.getSampleFlags() : this.movExtractor.getSampleFlags();
    }

    public boolean getSampleCryptoInfo(MediaCodec.CryptoInfo cryptoInfo) {
        return this.canUseNative ? this.mediaExtractor.getSampleCryptoInfo(cryptoInfo) : this.movExtractor.getSampleCryptoInfo(cryptoInfo);
    }

    public void advance() {
        if (this.canUseNative) {
            this.mediaExtractor.advance();
        } else {
            this.movExtractor.advance();
        }
    }
}
