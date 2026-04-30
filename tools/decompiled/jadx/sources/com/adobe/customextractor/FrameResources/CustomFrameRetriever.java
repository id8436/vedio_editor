package com.adobe.customextractor.FrameResources;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Build;
import android.os.Environment;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.Surface;
import com.adobe.customextractor.ClipExtractor;
import com.adobe.customextractor.Util.Media.MediaFormat;
import com.adobe.customextractor.Util.Media.MimeTypes;
import com.google.common.primitives.UnsignedBytes;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class CustomFrameRetriever {
    private static final String TAG = "CustomFrameRetriever";
    private static int TARGET_HEIGHT;
    private static int TARGET_WIDTH;
    private static CustomFrameRetriever instance;
    private MediaFormat customFormat;
    private boolean decoderInit;
    private boolean endOfInputStream;
    private boolean endOfOutputStream;
    private ClipExtractor extractor;
    private boolean extractorInit;
    private android.media.MediaFormat format;
    private boolean frameBuffered;
    private GLCore glCore;
    private ByteBuffer[] inputBuffers;
    Surface mSurface;
    private MediaCodec mediaCodec;
    private String mimeType;
    private android.media.MediaFormat outputFormat;
    private int outputHeight;
    private int outputWidth;
    private int rotation;
    private int sourceHeight;
    private int sourceWidth;
    private Bitmap thumbnail;

    public static CustomFrameRetriever getInstance() {
        if (instance == null) {
            instance = new CustomFrameRetriever();
        }
        return instance;
    }

    private CustomFrameRetriever() {
    }

    public boolean prepare(long j, ClipExtractor clipExtractor, int i, int i2) {
        this.extractor = clipExtractor;
        TARGET_HEIGHT = i2;
        TARGET_WIDTH = i;
        this.decoderInit = false;
        this.frameBuffered = false;
        this.thumbnail = null;
        Log.i("ThumbLog", "CustomFrameRet:prepare " + j);
        Log.i("ThumbLog", "CustomFrameRet:targetH " + i2 + " targetW " + i);
        this.extractorInit = initExtractor();
        if (this.extractorInit) {
            Log.i("ThumbLog", "Prepare:ExtactorInit done");
            transformClipDimensions();
            setupGl();
            this.decoderInit = initDecoder(false);
            if (this.decoderInit) {
                Log.i("ThumbLog", "DecoderInit true");
                seekTo(j);
                this.frameBuffered = false;
                while (!this.frameBuffered && !this.endOfOutputStream) {
                    try {
                        feedInput();
                        getDecodedOutput();
                    } catch (IllegalStateException e2) {
                        Log.e("ThumbLog", "Illegal State codec " + e2);
                        this.decoderInit = false;
                        releaseInternal();
                        return false;
                    }
                }
                if (this.frameBuffered) {
                    Log.i("ThumbLog", "Found frame");
                }
                return this.frameBuffered;
            }
            Log.e("ThumbLog", "Could not init decoder");
            releaseInternal();
            return false;
        }
        Log.e("ThumbLog", "Prepare:Could not prepare extractor");
        return false;
    }

    private void setupGl() {
        if (this.rotation == 90 || this.rotation == 270) {
            this.outputWidth = this.sourceHeight;
            this.outputHeight = this.sourceWidth;
        } else {
            this.outputWidth = this.sourceWidth;
            this.outputHeight = this.sourceHeight;
        }
        this.glCore = new GLCore();
        this.glCore.makeCurrent(this.glCore.createMemSurface(this.outputWidth, this.outputHeight));
        this.mSurface = this.glCore.createSurface();
    }

    public int getRotation() {
        return this.rotation;
    }

    public void release() {
        releaseInternal();
    }

    private void releaseInternal() {
        releaseDecoder();
        if (this.glCore != null) {
            this.glCore.release();
            this.glCore = null;
        }
    }

    private void recycleThumbnail() {
        if (this.thumbnail != null) {
            this.thumbnail.recycle();
            this.thumbnail = null;
        }
    }

    private void releaseDecoder() {
        if (this.mediaCodec != null) {
            try {
                this.mediaCodec.stop();
            } catch (IllegalStateException e2) {
                Log.e("ThumbLog", "ReleaseDecoder mediaCodec.stop in illegal state " + e2);
            }
        }
        if (this.mediaCodec != null) {
            this.mediaCodec.release();
            this.mediaCodec = null;
        }
    }

    private boolean initExtractor() {
        int trackCount = this.extractor.getTrackCount();
        int i = 0;
        while (true) {
            if (i >= trackCount) {
                i = -1;
                break;
            }
            MediaFormat trackFormat = this.extractor.getTrackFormat(i);
            if (trackFormat == null || !MimeTypes.isVideo(trackFormat.mimeType)) {
                i++;
            } else {
                this.format = trackFormat.getFrameworkMediaFormatV16();
                this.customFormat = trackFormat;
                this.sourceWidth = this.customFormat.width;
                this.sourceHeight = this.customFormat.height;
                this.rotation = this.customFormat.rotation;
                this.mimeType = this.customFormat.mimeType;
                Log.i("ThumbLog", "Rotation " + this.rotation);
                break;
            }
        }
        if (i != -1) {
            this.extractor.selectTrack(i);
            return true;
        }
        Log.e(TAG, "Could not find the video track");
        return false;
    }

    private void transformClipDimensions() {
        Log.i("ThumbLog", "configure w " + this.sourceWidth + " h " + this.sourceHeight);
        if (this.mimeType.equals("video/avc")) {
            do {
                if (this.sourceHeight <= TARGET_HEIGHT && this.sourceWidth <= TARGET_WIDTH) {
                    break;
                }
                this.sourceHeight >>= 1;
                this.sourceWidth >>= 1;
                if (this.sourceWidth % 2 == 1) {
                    break;
                }
            } while (this.sourceHeight % 2 != 1);
            if (this.sourceWidth % 2 == 1 || this.sourceHeight % 2 == 1) {
                this.sourceWidth <<= 1;
                this.sourceHeight <<= 1;
            }
        }
        this.sourceWidth = (this.sourceWidth + 15) & 268435440;
        this.sourceHeight = (this.sourceHeight + 15) & 268435440;
        Log.i("ThumbLog", "configure new w " + this.sourceWidth + " h" + this.sourceHeight);
        this.format.setInteger("width", this.sourceWidth);
        this.format.setInteger("height", this.sourceHeight);
        Log.i("ThumbLog", "configure new w " + this.sourceWidth + " h" + this.sourceHeight);
    }

    private void codecConfigure(MediaCodec mediaCodec, android.media.MediaFormat mediaFormat) {
        Log.i("ThumbLog", "Before config");
        mediaCodec.configure(mediaFormat, this.mSurface, (MediaCrypto) null, 0);
        Log.i("ThumbLog", "After config");
    }

    private boolean initDecoder(boolean z) {
        boolean z2;
        Log.i("ThumbLog", "Initializing decoder " + z);
        if (!this.extractorInit || this.format == null) {
            return false;
        }
        String string = this.format.getString("mime");
        try {
            this.mediaCodec = MediaCodec.createDecoderByType(string);
            codecConfigure(this.mediaCodec, this.format);
            this.mediaCodec.start();
            if (Build.VERSION.SDK_INT < 21) {
                this.inputBuffers = this.mediaCodec.getInputBuffers();
            }
            z2 = false;
        } catch (Exception e2) {
            Log.e("ThumbLog", "initDecoder:Could not create decoder (mimeType) " + string + " software " + z + e2);
            z2 = true;
        }
        this.endOfInputStream = false;
        this.endOfOutputStream = false;
        return !z2;
    }

    private void feedInput() throws IllegalStateException {
        int iDequeueInputBuffer;
        ByteBuffer inputBufferSDK21;
        if (!this.endOfInputStream && (iDequeueInputBuffer = this.mediaCodec.dequeueInputBuffer(100L)) >= 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                inputBufferSDK21 = getInputBufferSDK21(iDequeueInputBuffer);
            } else {
                inputBufferSDK21 = this.inputBuffers[iDequeueInputBuffer];
            }
            int sampleData = this.extractor.readSampleData(inputBufferSDK21, 0);
            Log.i("ThumbLog", "Flag - " + (this.extractor.getSampleFlags() & 1));
            long sampleTime = 0;
            if (sampleData == -2) {
                Log.i("ThumbLog", "FeedData:SampleNotFound");
                sampleData = 0;
            } else if (sampleData == -1) {
                Log.i("ThumbLog", "FeedData:Endofstream");
                this.endOfInputStream = true;
                sampleData = 0;
            } else {
                sampleTime = this.extractor.getSampleTime();
            }
            Log.i("ThumbLog", "Sample size " + sampleData + " presenetationTime " + sampleTime);
            this.mediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, sampleTime, this.endOfInputStream ? 4 : 0);
            if (!this.endOfInputStream) {
                this.extractor.advance();
            }
        }
    }

    private void getDecodedOutput() throws IllegalStateException {
        int i = -1;
        if (!this.endOfOutputStream && this.mediaCodec != null) {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -2) {
                Log.i("ThumbLog", "Output format changed");
                this.outputFormat = this.mediaCodec.getOutputFormat();
            } else if (iDequeueOutputBuffer == -3) {
                Log.i("ThumbLog", "output buffers changed");
            } else {
                if (iDequeueOutputBuffer < 0) {
                    Log.i("DecodeFail", "Decode: outputIndex " + iDequeueOutputBuffer);
                }
                i = iDequeueOutputBuffer;
            }
            if ((bufferInfo.flags & 4) != 0) {
                Log.i("ThumbLog", "decode: end of output");
                this.endOfOutputStream = true;
            }
            if (i >= 0) {
                Log.i("ThumbLog", "Decoded at " + bufferInfo.presentationTimeUs);
                this.mediaCodec.releaseOutputBuffer(i, true);
                drawThumbnail();
                this.frameBuffered = true;
                if ((bufferInfo.flags & 4) != 0) {
                    this.endOfOutputStream = true;
                    releaseDecoder();
                }
            }
        }
    }

    private void seekTo(long j) {
        this.endOfOutputStream = false;
        this.endOfInputStream = false;
        this.extractor.seekTo(j);
    }

    private void drawThumbnail() {
        int integer;
        int integer2;
        int integer3;
        int i;
        int integer4;
        int i2;
        this.glCore.waitForFrame();
        if (this.outputFormat.containsKey("stride")) {
            integer = this.outputFormat.getInteger("stride");
        } else {
            integer = this.outputFormat.getInteger("width");
        }
        if (this.outputFormat.containsKey("slice-height")) {
            integer2 = this.outputFormat.getInteger("slice-height");
        } else {
            integer2 = this.outputFormat.getInteger("height");
        }
        if (this.outputFormat.containsKey("crop-bottom") && this.outputFormat.containsKey("crop-top")) {
            int integer5 = this.outputFormat.getInteger("crop-bottom");
            integer3 = this.outputFormat.getInteger("crop-top");
            i = integer5;
        } else {
            Log.w("VideoDecoder", "Could not find crop param top and bottom");
            integer3 = 0;
            i = integer2 - 1;
        }
        if (this.outputFormat.containsKey("crop-right") && this.outputFormat.containsKey("crop-left")) {
            int integer6 = this.outputFormat.getInteger("crop-right");
            integer4 = this.outputFormat.getInteger("crop-left");
            i2 = integer6;
        } else {
            Log.w("VideoDecoder", "Could not find crop param right or left");
            integer4 = 0;
            i2 = integer - 1;
        }
        Log.i("ThumbLog", "Crop t " + integer3 + " r " + i2 + " b " + i + " l " + integer4);
        IntBuffer intBufferDrawFrame = this.glCore.drawFrame(this.outputWidth, this.outputHeight, this.rotation, integer, integer2, (i2 - integer4) + 1, (i - integer3) + 1);
        this.thumbnail = pixelsToBitmap(intBufferDrawFrame.array(), intBufferDrawFrame.order());
    }

    private Bitmap pixelsToBitmap(int[] iArr, ByteOrder byteOrder) {
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            for (int i = 0; i < iArr.length; i++) {
                int i2 = iArr[i];
                int i3 = (((byte) ((i2 & ViewCompat.MEASURED_STATE_MASK) >>> 24)) & UnsignedBytes.MAX_VALUE) << 24;
                iArr[i] = ((((byte) (i2 & 255)) & UnsignedBytes.MAX_VALUE) << 16) | i3 | ((((byte) ((i2 & 65280) >>> 8)) & UnsignedBytes.MAX_VALUE) << 8) | (((byte) ((i2 & 16711680) >>> 16)) & UnsignedBytes.MAX_VALUE);
            }
        } else {
            for (int i4 = 0; i4 < iArr.length; i4++) {
                int i5 = iArr[i4];
                iArr[i4] = ((((byte) (i5 & 255)) & UnsignedBytes.MAX_VALUE) << 24) | ((((byte) ((i5 & ViewCompat.MEASURED_STATE_MASK) >>> 24)) & UnsignedBytes.MAX_VALUE) << 16) | ((((byte) ((i5 & 16711680) >>> 16)) & UnsignedBytes.MAX_VALUE) << 8) | (((byte) ((i5 & 65280) >>> 8)) & UnsignedBytes.MAX_VALUE);
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.outputWidth, this.outputHeight, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setPixels(iArr, 0, this.outputWidth, 0, 0, this.outputWidth, this.outputHeight);
        return bitmapCreateBitmap;
    }

    @TargetApi(21)
    private ByteBuffer getInputBufferSDK21(int i) {
        return this.mediaCodec.getInputBuffer(i);
    }

    @TargetApi(21)
    private ByteBuffer getOutputBufferSDK21(int i) {
        return this.mediaCodec.getOutputBuffer(i);
    }

    public Bitmap getFrame() {
        return this.thumbnail;
    }

    private void saveBitmapToFile() {
        try {
            this.thumbnail.compress(Bitmap.CompressFormat.PNG, 85, new FileOutputStream(new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/thumb1.png")));
        } catch (FileNotFoundException e2) {
            Log.e("ThumbLog", "SaveBitmap fail " + e2);
        }
    }
}
