package com.adobe.premiereclip.editor.waveform;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Handler;
import android.util.Log;
import com.adobe.decoderfactory.AudioDecoderCache;
import com.adobe.decoderfactory.AudioInfo;
import com.adobe.decoderfactory.AudioReadData;
import com.adobe.decoderfactory.IAudioDecoder;
import com.adobe.premiereclip.project.sequence.AudioClip;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.ImageClip;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.JsonReader;
import com.adobe.premiereclip.util.JsonWriter;
import java.io.File;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AudioPeakGenerator {
    private static final int AUDIO_BUFFER_SIZE = 65536;
    private static final int DEFAULT_BLOCK_SIZE = 1024;
    private static final int NUM_CHANNELS = 2;
    public static final int PER_BITMAP_SIZE = 200;
    private Listener waveListener;
    private final Object listenerLock = new Object();
    private BooleanLock cancel = new BooleanLock();
    private BooleanLock ready = new BooleanLock();

    public interface Listener {
        void onWaveformClear();

        void onWaveformDraw(ArrayList<Bitmap> arrayList, Clip clip);
    }

    public AudioPeakGenerator() {
        setReadyState();
    }

    public void initPeakGenerator(final Clip clip, final WaveDisplayParam waveDisplayParam, final WaveDisplayParam waveDisplayParam2, final Handler handler, Listener listener, boolean z) {
        this.cancel.setData(true);
        synchronized (this.listenerLock) {
            this.waveListener = listener;
            this.waveListener.onWaveformClear();
        }
        if (!z) {
            Log.d("FullAudioPeaks", "init peaks for : " + clip.getAssetReference().getAssetPath());
            if (!(clip instanceof ImageClip)) {
                new Thread(new Runnable() { // from class: com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AudioPeakGenerator.this.generateWaveform(clip, waveDisplayParam, waveDisplayParam2, handler);
                    }
                }).start();
            }
        }
    }

    public void cancelOngoingTask() {
        this.cancel.setData(true);
        synchronized (this.listenerLock) {
            this.waveListener = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReadyState() {
        this.cancel.setData(false);
        this.ready.setData(true);
    }

    private void setNotReadyState() {
        this.ready.setData(false);
        this.cancel.setData(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getAudioPeakData(final Clip clip, final WaveDisplayParam waveDisplayParam, final WaveDisplayParam waveDisplayParam2, final Handler handler) {
        int i;
        long j;
        if (this.cancel.getData()) {
            setReadyState();
            return;
        }
        try {
            IAudioDecoder decoder = AudioDecoderCache.Instance().getDecoder(0, clip.getAssetReference().getAssetPath());
            if (decoder == null) {
                Log.d("AudioPeaks", "error creating decoder");
                setReadyState();
                return;
            }
            decoder.seekTo(0L);
            AudioInfo outputInfo = decoder.getOutputInfo();
            int channels = outputInfo.getChannels();
            int sampleRate = outputInfo.getSampleRate();
            long duration = outputInfo.getDuration();
            long jRound = Math.round(((double) sampleRate) * (duration / 1000000.0d));
            if (duration < WaveUtils.END_DURATION_BLOCKED) {
                i = 128;
            } else if (duration >= 10000000) {
                i = 1024;
            } else {
                i = 256;
            }
            AudioReadData audioReadData = new AudioReadData(ByteBuffer.allocate(65536));
            long j2 = 0;
            long j3 = jRound / ((long) i);
            Log.d("AudioPeaks", "audio decoding : no of samples : " + jRound + "  no of blocks in sample data : " + j3 + " no of channels : " + channels);
            float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 2, i);
            int i2 = 0;
            final AudioSampleBuffer audioSampleBuffer = new AudioSampleBuffer(2, j3);
            while (!decoder.isEOF() && !this.cancel.getData()) {
                decoder.readNextSamples(audioReadData);
                long noOfSamples = audioReadData.getNoOfSamples();
                if (noOfSamples > 0) {
                    ShortBuffer shortBufferAsShortBuffer = audioReadData.getData().order(ByteOrder.nativeOrder()).asShortBuffer();
                    if (channels > 1) {
                        for (int i3 = 0; i3 < noOfSamples; i3++) {
                            for (int i4 = 0; i4 < 2; i4++) {
                                fArr[i4][i2] = Math.abs(shortBufferAsShortBuffer.get() / 32768.0f);
                            }
                            i2++;
                            if (i2 == i) {
                                if (fArr != null) {
                                    addMaxPeak(fArr, i, audioSampleBuffer);
                                }
                                i2 = 0;
                            }
                            for (int i5 = 0; i5 < channels - 2; i5++) {
                                shortBufferAsShortBuffer.get();
                            }
                        }
                    } else {
                        for (int i6 = 0; i6 < noOfSamples; i6++) {
                            float fAbs = Math.abs(shortBufferAsShortBuffer.get() / 32768.0f);
                            for (int i7 = 0; i7 < 2; i7++) {
                                fArr[i7][i2] = fAbs;
                            }
                            i2++;
                            if (i2 == i) {
                                if (fArr != null) {
                                    addMaxPeak(fArr, i, audioSampleBuffer);
                                }
                                i2 = 0;
                            }
                        }
                    }
                    j = j2 + noOfSamples;
                } else {
                    j = j2;
                }
                j2 = j;
            }
            if (!this.cancel.getData()) {
                long size = audioSampleBuffer.getData().size();
                float[] fArr2 = new float[((int) size) * 2];
                for (int i8 = 0; i8 < size; i8++) {
                    float[] fArr3 = audioSampleBuffer.getData().get(i8);
                    for (int i9 = 0; i9 < 2; i9++) {
                        fArr2[(i8 * 2) + i9] = fArr3[i9];
                    }
                }
                JsonWriter.writeDataToJsonFile(fArr2, clip.getAssetReference().getAssetPath(), "waveform", new JsonWriter.IDataWriteHandler() { // from class: com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.2
                    @Override // com.adobe.premiereclip.util.JsonWriter.IDataWriteHandler
                    public void onSuccess(File file) {
                        Log.d("AudioPeaks", "file write success");
                        AudioPeakGenerator.this.onPeakDataGenerated(waveDisplayParam, waveDisplayParam2, handler, audioSampleBuffer, clip);
                    }

                    @Override // com.adobe.premiereclip.util.JsonWriter.IDataWriteHandler
                    public void onError(Exception exc) {
                        exc.printStackTrace();
                        Log.d("AudioPeaks", "file write error");
                        AudioPeakGenerator.this.setReadyState();
                    }
                });
                Log.d("AudioPeaks", "audio decoding : no of peaks in clip : " + audioSampleBuffer.getData().size() + " totalSamples : " + j2);
                return;
            }
            Log.d("AudioPeaks", "audio decoding cancelled");
            setReadyState();
        } catch (Exception e2) {
            e2.printStackTrace();
            setReadyState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getFullAudioPeakData(final Clip clip, final WaveDisplayParam waveDisplayParam, final WaveDisplayParam waveDisplayParam2, final Handler handler) {
        int i;
        if (this.cancel.getData()) {
            setReadyState();
            return;
        }
        Log.d("FullAudioPeaks", "will start decoding");
        try {
            IAudioDecoder decoder = AudioDecoderCache.Instance().getDecoder(0, clip.getAssetReference().getAssetPath());
            if (decoder == null) {
                Log.d("FullAudioPeaks", "error creating decoder");
                setReadyState();
                return;
            }
            decoder.seekTo(0L);
            AudioInfo outputInfo = decoder.getOutputInfo();
            int channels = outputInfo.getChannels();
            int sampleRate = outputInfo.getSampleRate();
            long duration = outputInfo.getDuration();
            long jRound = Math.round(((double) sampleRate) * (duration / 1000000.0d));
            if (duration < WaveUtils.END_DURATION_BLOCKED) {
                i = 128;
            } else if (duration >= 10000000) {
                i = 1024;
            } else {
                i = 256;
            }
            AudioReadData audioReadData = new AudioReadData(ByteBuffer.allocate(65536));
            long j = 0;
            long j2 = jRound / ((long) i);
            Log.d("FullAudioPeaks", "audio decoding : no of samples : " + jRound + "  no of blocks in sample data : " + j2 + " no of channels : " + channels);
            float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 2, i);
            int i2 = 0;
            final AudioSampleBuffer audioSampleBuffer = new AudioSampleBuffer(2, j2);
            final AudioSampleBuffer audioSampleBuffer2 = new AudioSampleBuffer(2, j2);
            while (!decoder.isEOF() && !this.cancel.getData()) {
                decoder.readNextSamples(audioReadData);
                long noOfSamples = audioReadData.getNoOfSamples();
                if (noOfSamples > 0) {
                    ShortBuffer shortBufferAsShortBuffer = audioReadData.getData().order(ByteOrder.nativeOrder()).asShortBuffer();
                    if (channels > 1) {
                        for (int i3 = 0; i3 < noOfSamples; i3++) {
                            for (int i4 = 0; i4 < 2; i4++) {
                                fArr[i4][i2] = shortBufferAsShortBuffer.get() / 32768.0f;
                            }
                            i2++;
                            if (i2 == i) {
                                if (fArr != null) {
                                    addMinPeak(fArr, i, audioSampleBuffer);
                                    addMaxPeak(fArr, i, audioSampleBuffer2);
                                }
                                i2 = 0;
                            }
                            for (int i5 = 0; i5 < channels - 2; i5++) {
                                shortBufferAsShortBuffer.get();
                            }
                        }
                    } else {
                        for (int i6 = 0; i6 < noOfSamples; i6++) {
                            float f2 = shortBufferAsShortBuffer.get() / 32768.0f;
                            for (int i7 = 0; i7 < 2; i7++) {
                                fArr[i7][i2] = f2;
                            }
                            i2++;
                            if (i2 == i) {
                                if (fArr != null) {
                                    addMinPeak(fArr, i, audioSampleBuffer);
                                    addMaxPeak(fArr, i, audioSampleBuffer2);
                                }
                                i2 = 0;
                            }
                        }
                    }
                    j += noOfSamples;
                }
            }
            if (!this.cancel.getData()) {
                int size = audioSampleBuffer.getData().size();
                int size2 = audioSampleBuffer2.getData().size();
                float[] fArr2 = new float[(size + size2) * 2];
                for (int i8 = 0; i8 < size; i8++) {
                    float[] fArr3 = audioSampleBuffer.getData().get(i8);
                    for (int i9 = 0; i9 < 2; i9++) {
                        fArr2[(i8 * 2) + i9] = fArr3[i9];
                    }
                }
                for (int i10 = size; i10 < size2 + size; i10++) {
                    float[] fArr4 = audioSampleBuffer2.getData().get(i10 - size);
                    for (int i11 = 0; i11 < 2; i11++) {
                        fArr2[(i10 * 2) + i11] = fArr4[i11];
                    }
                }
                Log.d("FullAudioPeaks", "got peaks, starting file write");
                JsonWriter.writeDataToJsonFile(fArr2, clip.getAssetReference().getAssetPath(), "waveform", new JsonWriter.IDataWriteHandler() { // from class: com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.3
                    @Override // com.adobe.premiereclip.util.JsonWriter.IDataWriteHandler
                    public void onSuccess(File file) {
                        Log.d("FullAudioPeaks", "file write success");
                        AudioPeakGenerator.this.onFullPeakDataGenerated(waveDisplayParam, waveDisplayParam2, handler, audioSampleBuffer, audioSampleBuffer2, clip);
                    }

                    @Override // com.adobe.premiereclip.util.JsonWriter.IDataWriteHandler
                    public void onError(Exception exc) {
                        exc.printStackTrace();
                        Log.d("FullAudioPeaks", "file write error");
                        AudioPeakGenerator.this.setReadyState();
                    }
                });
                return;
            }
            Log.d("FullAudioPeaks", "audio decoding cancelled");
            setReadyState();
        } catch (Exception e2) {
            e2.printStackTrace();
            setReadyState();
        }
    }

    private void addMaxPeak(float[][] fArr, int i, AudioSampleBuffer audioSampleBuffer) {
        float[] fArr2 = new float[2];
        for (int i2 = 0; i2 < 2; i2++) {
            float f2 = -3.4028235E38f;
            for (int i3 = 0; i3 < i; i3++) {
                if (fArr[i2][i3] > f2) {
                    f2 = fArr[i2][i3];
                }
            }
            fArr2[i2] = f2;
        }
        audioSampleBuffer.getData().add(fArr2);
    }

    private void addMinPeak(float[][] fArr, int i, AudioSampleBuffer audioSampleBuffer) {
        float[] fArr2 = new float[2];
        for (int i2 = 0; i2 < 2; i2++) {
            float f2 = Float.MAX_VALUE;
            for (int i3 = 0; i3 < i; i3++) {
                if (fArr[i2][i3] < f2) {
                    f2 = fArr[i2][i3];
                }
            }
            fArr2[i2] = f2;
        }
        audioSampleBuffer.getData().add(fArr2);
    }

    private void getPeakPixels(AudioSampleBuffer audioSampleBuffer, float[][] fArr, int i) {
        if (audioSampleBuffer != null) {
            getPeakPixels(audioSampleBuffer, fArr, i, 0L, audioSampleBuffer.getData().size(), audioSampleBuffer.getData().size(), true);
        }
    }

    private void getPeakPixels(AudioSampleBuffer audioSampleBuffer, float[][] fArr, int i, long j, long j2, long j3, boolean z) {
        float f2;
        float f3;
        if (this.cancel.getData()) {
            Log.d("FullAudioPeaks", "getpeakpixels cancelled");
            setReadyState();
            return;
        }
        long size = audioSampleBuffer.getData().size();
        int numChannels = audioSampleBuffer.getNumChannels();
        double d2 = j / j3;
        double d3 = (((j2 - j) * size) / j3) / ((double) i);
        Log.d("FullAudioPeaks", "num pixels : " + i + " num blocks :" + size);
        for (int i2 = 0; i2 < numChannels; i2++) {
            double d4 = d2 * size;
            double d5 = d4 + d3;
            if (z) {
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    double d6 = d4;
                    d4 = d5;
                    if (i4 < i) {
                        long jFloor = (long) Math.floor(d6);
                        long jCeil = (long) Math.ceil(d4);
                        long j4 = jCeil > size ? size : jCeil;
                        if (j4 - jFloor > 0) {
                            f3 = 0.0f;
                            long j5 = jFloor;
                            while (j5 < j4) {
                                float f4 = audioSampleBuffer.getData().get((int) j5)[i2];
                                if (f3 >= f4) {
                                    f4 = f3;
                                }
                                j5++;
                                f3 = f4;
                            }
                        } else {
                            f3 = audioSampleBuffer.getData().get((int) jFloor)[i2];
                        }
                        fArr[i4][i2] = f3;
                        d5 = d4 + d3;
                        i3 = i4 + 1;
                    }
                }
            } else {
                int i5 = 0;
                while (true) {
                    int i6 = i5;
                    double d7 = d4;
                    d4 = d5;
                    if (i6 < i) {
                        long jFloor2 = (long) Math.floor(d7);
                        long jFloor3 = (long) Math.floor(d4);
                        long j6 = jFloor3 > size ? size : jFloor3;
                        if (j6 - jFloor2 > 0) {
                            f2 = Float.MAX_VALUE;
                            long j7 = jFloor2;
                            while (j7 < j6) {
                                float f5 = audioSampleBuffer.getData().get((int) j7)[i2];
                                if (f2 <= f5) {
                                    f5 = f2;
                                }
                                j7++;
                                f2 = f5;
                            }
                        } else {
                            f2 = audioSampleBuffer.getData().get((int) jFloor2)[i2];
                        }
                        fArr[i6][i2] = f2;
                        d5 = d4 + d3;
                        i5 = i6 + 1;
                    }
                }
            }
        }
    }

    private void displayAudioPeaks(float[][] fArr, WaveDisplayParam waveDisplayParam, WaveDisplayParam waveDisplayParam2, Handler handler, final Clip clip) {
        if (this.cancel.getData()) {
            Log.d("AudioPeaks", "displaypeaks cancelled");
            setReadyState();
            return;
        }
        float f2 = waveDisplayParam.startX;
        float f3 = waveDisplayParam.startY;
        float f4 = waveDisplayParam.endX;
        float f5 = waveDisplayParam.endY;
        int i = (int) (waveDisplayParam2.endX - waveDisplayParam2.startX);
        int i2 = (int) (waveDisplayParam2.endY - waveDisplayParam2.startY);
        String str = clip.getAssetReference().getAssetPath() + "waveform";
        Bitmap bitmap = BitmapCache.getBitmap(str);
        if (bitmap == null) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawColor(Color.argb(255, 255, 255, 255));
            Paint paint = new Paint();
            paint.setColor(Color.argb(255, 180, 180, 180));
            canvas.drawRect(f2, f3, f4, f5, paint);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(3.0f);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setColor(Color.argb(255, 224, 224, 224));
            paint.setAntiAlias(true);
            int iRound = Math.round(f2);
            int iRound2 = Math.round(f4);
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < 2) {
                    for (int i5 = iRound; i5 < iRound2; i5++) {
                        if (this.cancel.getData()) {
                            Log.d("AudioPeaks", "displaypeaks cancelled");
                            setReadyState();
                            return;
                        }
                        canvas.drawLine(i5, i2 - f3, i5, i2 - ((fArr[i5 - iRound][i4] * (f5 - f3)) + f3), paint);
                    }
                    i3 = i4 + 1;
                } else {
                    paint.setColor(Color.argb(255, 128, 128, 128));
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setStrokeWidth(3.0f);
                    paint.setStrokeCap(Paint.Cap.ROUND);
                    paint.setStrokeJoin(Paint.Join.ROUND);
                    Path path = new Path();
                    float f6 = 0.0f;
                    for (int i6 = 0; i6 < 2; i6++) {
                        if (f6 < fArr[0][i6]) {
                            f6 = fArr[0][i6];
                        }
                    }
                    path.moveTo(iRound, i2 - ((f6 * (f5 - f3)) + f3));
                    int i7 = iRound + 1;
                    while (true) {
                        int i8 = i7;
                        if (i8 < iRound2) {
                            if (this.cancel.getData()) {
                                Log.d("AudioPeaks", "displaypeaks cancelled");
                                setReadyState();
                                return;
                            }
                            float f7 = 0.0f;
                            for (int i9 = 0; i9 < 2; i9++) {
                                if (f7 < fArr[i8 - iRound][i9]) {
                                    f7 = fArr[i8 - iRound][i9];
                                }
                            }
                            path.lineTo(i8, i2 - ((f7 * (f5 - f3)) + f3));
                            i7 = i8 + 1;
                        } else {
                            canvas.drawPath(path, paint);
                            BitmapCache.addBitmapToMemoryCache(str, bitmapCreateBitmap);
                            BitmapCache.addBitmapToDiskCache(str, bitmapCreateBitmap);
                            bitmap = bitmapCreateBitmap;
                            break;
                        }
                    }
                }
            }
        }
        final ArrayList arrayList = new ArrayList();
        arrayList.add(bitmap);
        setReadyState();
        handler.post(new Runnable() { // from class: com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.4
            @Override // java.lang.Runnable
            public void run() {
                synchronized (AudioPeakGenerator.this.listenerLock) {
                    if (AudioPeakGenerator.this.waveListener != null) {
                        AudioPeakGenerator.this.waveListener.onWaveformDraw(arrayList, clip);
                    }
                }
            }
        });
    }

    private void displayFullAudioPeaks(float[][] fArr, float[][] fArr2, WaveDisplayParam waveDisplayParam, WaveDisplayParam waveDisplayParam2, Handler handler, final Clip clip) {
        float f2;
        float f3;
        if (this.cancel.getData()) {
            Log.d("FullAudioPeaks", "displaypeaks cancelled");
            setReadyState();
            return;
        }
        Log.d("FullAudioPeak", "start drawing");
        float f4 = waveDisplayParam.startX;
        float f5 = waveDisplayParam.startY;
        float f6 = waveDisplayParam.endX;
        float f7 = waveDisplayParam.endY;
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(3.0f);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setColor(Color.argb(255, 112, 55, 161));
        paint.setAntiAlias(true);
        int i = (int) (f6 - f4);
        int i2 = (int) (f7 - f5);
        float f8 = i2 / 2;
        float f9 = i2 * 0.32f;
        int i3 = (int) ((waveDisplayParam2.endX - waveDisplayParam2.startX) / i);
        final ArrayList arrayList = new ArrayList();
        String str = clip.getAssetReference().getAssetPath() + "waveform";
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            int i7 = i4;
            if (i6 < i3) {
                String str2 = str + String.valueOf(i6);
                Bitmap bitmap = BitmapCache.getBitmap(str2);
                if (bitmap == null) {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    canvas.drawColor(Color.argb(255, 255, 255, 255));
                    int iRound = Math.round(f4);
                    int iRound2 = Math.round(f6);
                    int i8 = 0;
                    while (true) {
                        int i9 = i8;
                        if (i9 < 2) {
                            for (int i10 = iRound; i10 < iRound2; i10++) {
                                if (this.cancel.getData()) {
                                    Log.d("FullAudioPeaks", "displaypeaks cancelled");
                                    setReadyState();
                                    return;
                                }
                                float f10 = fArr[(i7 + i10) - iRound][i9] * f9;
                                float f11 = fArr2[(i7 + i10) - iRound][i9] * f9;
                                if (f10 < 0.0f && f11 > 0.0f) {
                                    f3 = f8 + f10;
                                    f2 = f8 + f11;
                                } else if (f10 > 0.0f && f11 < 0.0f) {
                                    Log.d("FullPixels", "error in values");
                                    setReadyState();
                                    return;
                                } else {
                                    f2 = f8 - f11;
                                    f3 = f8;
                                }
                                canvas.drawLine(i10, f3, i10, f2, paint);
                            }
                            i8 = i9 + 1;
                        } else {
                            canvas.drawLine(0.0f, f8, i, f8, paint);
                            BitmapCache.addBitmapToMemoryCache(str2, bitmapCreateBitmap);
                            BitmapCache.addBitmapToDiskCache(str2, bitmapCreateBitmap);
                            bitmap = bitmapCreateBitmap;
                            break;
                        }
                    }
                }
                i4 = i7 + i;
                arrayList.add(bitmap);
                Log.d("FullAudioBitmap", "bitmap : " + i6);
                i5 = i6 + 1;
            } else {
                setReadyState();
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.5
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (AudioPeakGenerator.this.listenerLock) {
                            if (AudioPeakGenerator.this.waveListener != null) {
                                AudioPeakGenerator.this.waveListener.onWaveformDraw(arrayList, clip);
                            }
                        }
                    }
                });
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void generateWaveform(final Clip clip, final WaveDisplayParam waveDisplayParam, final WaveDisplayParam waveDisplayParam2, final Handler handler) {
        setNotReadyState();
        String assetPath = clip.getAssetReference().getAssetPath();
        if (getWaveformBitmapsIfAvailable(clip, waveDisplayParam, waveDisplayParam2, handler)) {
            setReadyState();
        } else {
            Log.d("FullAudioPeaks", "starting file read");
            JsonReader.readDataFromJSONFile(assetPath, "waveform", new JsonReader.IDataReadHandler() { // from class: com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.6
                @Override // com.adobe.premiereclip.util.JsonReader.IDataReadHandler
                public void onSuccess(float[] fArr) {
                    int length = (fArr.length / 2) / 2;
                    if (clip instanceof AudioClip) {
                        AudioSampleBuffer audioSampleBuffer = new AudioSampleBuffer(2, length);
                        AudioSampleBuffer audioSampleBuffer2 = new AudioSampleBuffer(2, length);
                        for (int i = 0; i < length; i++) {
                            float[] fArr2 = new float[2];
                            for (int i2 = 0; i2 < 2; i2++) {
                                fArr2[i2] = fArr[(i * 2) + i2];
                            }
                            audioSampleBuffer.getData().add(fArr2);
                        }
                        for (int i3 = length; i3 < length * 2; i3++) {
                            float[] fArr3 = new float[2];
                            for (int i4 = 0; i4 < 2; i4++) {
                                fArr3[i4] = fArr[(i3 * 2) + i4];
                            }
                            audioSampleBuffer2.getData().add(fArr3);
                        }
                        Log.d("FullAudioPeaks", "full peak : file read success");
                        AudioPeakGenerator.this.onFullPeakDataGenerated(waveDisplayParam, waveDisplayParam2, handler, audioSampleBuffer, audioSampleBuffer2, clip);
                        return;
                    }
                    AudioSampleBuffer audioSampleBuffer3 = new AudioSampleBuffer(2, length);
                    for (int i5 = 0; i5 < length; i5++) {
                        float[] fArr4 = new float[2];
                        for (int i6 = 0; i6 < 2; i6++) {
                            fArr4[i6] = fArr[(i5 * 2) + i6];
                        }
                        audioSampleBuffer3.getData().add(fArr4);
                    }
                    Log.d("AudioPeaks", "file read success");
                    AudioPeakGenerator.this.onPeakDataGenerated(waveDisplayParam, waveDisplayParam2, handler, audioSampleBuffer3, clip);
                }

                @Override // com.adobe.premiereclip.util.JsonReader.IDataReadHandler
                public void onError(Exception exc) {
                    Log.d("FullAudioPeaks", "file read error");
                    if (clip instanceof AudioClip) {
                        AudioPeakGenerator.this.getFullAudioPeakData(clip, waveDisplayParam, waveDisplayParam2, handler);
                    } else {
                        AudioPeakGenerator.this.getAudioPeakData(clip, waveDisplayParam, waveDisplayParam2, handler);
                    }
                }
            });
        }
    }

    private boolean getWaveformBitmapsIfAvailable(Clip clip, WaveDisplayParam waveDisplayParam, WaveDisplayParam waveDisplayParam2, Handler handler) {
        return clip instanceof AudioClip ? getMultipleWaveformBitmapsIfAvailable(clip, waveDisplayParam, waveDisplayParam2, handler) : getSingleWaveformBitmapIfAvailable(clip, handler);
    }

    private boolean getSingleWaveformBitmapIfAvailable(final Clip clip, Handler handler) {
        Bitmap bitmap = BitmapCache.getBitmap(clip.getAssetReference().getAssetPath() + "waveform");
        if (bitmap == null) {
            return false;
        }
        final ArrayList arrayList = new ArrayList();
        arrayList.add(bitmap);
        handler.post(new Runnable() { // from class: com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.7
            @Override // java.lang.Runnable
            public void run() {
                synchronized (AudioPeakGenerator.this.listenerLock) {
                    if (AudioPeakGenerator.this.waveListener != null) {
                        AudioPeakGenerator.this.waveListener.onWaveformDraw(arrayList, clip);
                    }
                }
            }
        });
        return true;
    }

    private boolean getMultipleWaveformBitmapsIfAvailable(final Clip clip, WaveDisplayParam waveDisplayParam, WaveDisplayParam waveDisplayParam2, Handler handler) {
        int i = (int) ((waveDisplayParam2.endX - waveDisplayParam2.startX) / ((int) (waveDisplayParam.endX - waveDisplayParam.startX)));
        final ArrayList arrayList = new ArrayList();
        String str = clip.getAssetReference().getAssetPath() + "waveform";
        for (int i2 = 0; i2 < i; i2++) {
            Bitmap bitmap = BitmapCache.getBitmap(str + String.valueOf(i2));
            if (bitmap == null) {
                return false;
            }
            arrayList.add(bitmap);
        }
        handler.post(new Runnable() { // from class: com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.8
            @Override // java.lang.Runnable
            public void run() {
                synchronized (AudioPeakGenerator.this.listenerLock) {
                    if (AudioPeakGenerator.this.waveListener != null) {
                        AudioPeakGenerator.this.waveListener.onWaveformDraw(arrayList, clip);
                    }
                }
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPeakDataGenerated(WaveDisplayParam waveDisplayParam, WaveDisplayParam waveDisplayParam2, Handler handler, AudioSampleBuffer audioSampleBuffer, Clip clip) {
        int iRound = Math.round(waveDisplayParam.endX - waveDisplayParam.startX);
        Log.d("AudioPeaks", "startx : " + waveDisplayParam.startX + "   endx : " + waveDisplayParam.endX);
        if (audioSampleBuffer != null) {
            Log.d("AudioPeaks", "peak data : " + audioSampleBuffer.getData().size() + "  channels : " + audioSampleBuffer.getNumChannels());
        }
        if (iRound <= 0) {
            setReadyState();
            return;
        }
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, iRound, 2);
        getPeakPixels(audioSampleBuffer, fArr, iRound);
        displayAudioPeaks(fArr, waveDisplayParam, waveDisplayParam2, handler, clip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFullPeakDataGenerated(WaveDisplayParam waveDisplayParam, WaveDisplayParam waveDisplayParam2, Handler handler, AudioSampleBuffer audioSampleBuffer, AudioSampleBuffer audioSampleBuffer2, Clip clip) {
        int iRound = Math.round(waveDisplayParam2.endX - waveDisplayParam2.startX);
        Log.d("FullAudioPeaks", "startx : " + waveDisplayParam2.startX + "   endx : " + waveDisplayParam2.endX);
        if (iRound <= 0) {
            setReadyState();
            return;
        }
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, iRound, 2);
        getPeakPixels(audioSampleBuffer, fArr, iRound, 0L, audioSampleBuffer.getData().size(), audioSampleBuffer.getData().size(), false);
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, iRound, 2);
        getPeakPixels(audioSampleBuffer2, fArr2, iRound, 0L, audioSampleBuffer2.getData().size(), audioSampleBuffer2.getData().size(), true);
        displayFullAudioPeaks(fArr, fArr2, waveDisplayParam, waveDisplayParam2, handler, clip);
    }

    class BooleanLock {
        private boolean data = false;
        private final Object lock = new Object();

        public BooleanLock() {
        }

        public void setData(boolean z) {
            synchronized (this.lock) {
                this.data = z;
            }
        }

        public boolean getData() {
            boolean z;
            synchronized (this.lock) {
                z = this.data;
            }
            return z;
        }
    }
}
