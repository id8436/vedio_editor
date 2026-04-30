package com.adobe.premiereclip.mediaengine.decoderutils;

import android.content.Context;
import android.util.Log;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaSurface;
import com.adobe.premiereclip.project.sequence.AssetReference;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.google.android.exoplayer.ExoPlaybackException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MediaDecoderCache {
    private static final int MAX_OPEN_MEDIA_COUNT = 3;
    private static MediaDecoderCache mDecoderCache;
    private MediaDecoder currentDecoder;
    private ExoPlaybackException pendingException;
    private Sequence sequence;
    private List<MediaDecoder> mDecoderList = new ArrayList();
    private int currentDecoderCapacity = 3;
    private final Object syncObject = new Object();

    public static MediaDecoderCache getInstance() {
        if (mDecoderCache == null) {
            mDecoderCache = new MediaDecoderCache();
        }
        return mDecoderCache;
    }

    private MediaDecoderCache() {
    }

    private void notifySequenceNotSetError() throws ExoPlaybackException {
        if (this.sequence == null) {
            throw new ExoPlaybackException("Sequence not set");
        }
    }

    private String getSourcePath(int i, int i2) throws ExoPlaybackException {
        AssetReference assetReference = this.sequence.getClips(i).get(i2).getAssetReference();
        if (assetReference == null) {
            return null;
        }
        return assetReference.getAssetPath();
    }

    private Clip.CLIP_TYPE getCLipType(int i, int i2) {
        return this.sequence.getClips(i).get(i2).getClipType();
    }

    private boolean removeDecoderWithSurface(GPUMediaSurface gPUMediaSurface) throws ExoPlaybackException {
        if (this.currentDecoder == null || this.currentDecoder.getSurface() == gPUMediaSurface || !gPUMediaSurface.isConnected()) {
            return false;
        }
        Log.i("VideoDecoder", "connected mediasurface");
        for (int i = 0; i < this.mDecoderList.size(); i++) {
            if (this.mDecoderList.get(i).getSurface() == gPUMediaSurface) {
                Log.i("VideoDecoder", "Release surface: " + i);
                MediaDecoder mediaDecoder = this.mDecoderList.get(i);
                releaseDecoder(mediaDecoder);
                this.mDecoderList.remove(mediaDecoder);
                return true;
            }
        }
        return false;
    }

    private Object[] getClipSize(int i, int i2) {
        return this.sequence.getClips(i).get(i2).getDimensions();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFailureDueToDecoderCapacity(Exception exc, Clip clip) {
        return isUltraHD(clip);
    }

    private boolean isUltraHD(Clip clip) {
        Object[] dimensions = clip.getDimensions();
        int iIntValue = ((Integer) dimensions[0]).intValue();
        int iIntValue2 = ((Integer) dimensions[1]).intValue();
        if (clip.getClipType() == Clip.CLIP_TYPE.VIDEO) {
            if (iIntValue < iIntValue2) {
                iIntValue2 = iIntValue;
            }
            if (iIntValue2 >= 1080) {
                return true;
            }
        }
        return false;
    }

    private void resetMediaSurface(GPUMediaSurface gPUMediaSurface, int i, int i2) {
        Object[] clipSize = getClipSize(i, i2);
        Log.i("VideoDecoder", "Reset surface: " + i2);
        gPUMediaSurface.resetSurface(((Integer) clipSize[0]).intValue(), ((Integer) clipSize[1]).intValue(), (Rotation) clipSize[2]);
    }

    private MediaDecoder getDecoder(Context context, int i, int i2, GPUMediaSurface gPUMediaSurface) throws ExoPlaybackException {
        MediaDecoder videoDecoder;
        String sourcePath = getSourcePath(i, i2);
        String strCalculateHash = MediaDecoder.calculateHash(sourcePath, i, i2);
        if (this.currentDecoder != null && this.currentDecoder.getHash().equals(strCalculateHash) && this.mDecoderList.indexOf(this.currentDecoder) != -1) {
            removeDecoderWithSurface(gPUMediaSurface);
            return this.currentDecoder;
        }
        for (int i3 = 0; i3 < this.mDecoderList.size(); i3++) {
            if (strCalculateHash.equals(this.mDecoderList.get(i3).getHash())) {
                MediaDecoder mediaDecoder = this.mDecoderList.get(i3);
                this.mDecoderList.remove(i3);
                this.mDecoderList.add(0, mediaDecoder);
                this.currentDecoder = mediaDecoder;
                if (removeDecoderWithSurface(gPUMediaSurface)) {
                    resetMediaSurface(gPUMediaSurface, i, i2);
                    return mediaDecoder;
                }
                return mediaDecoder;
            }
        }
        switch (getCLipType(i, i2)) {
            case VIDEO:
            case VIDEO_BUMPER:
                videoDecoder = new VideoDecoder(context, sourcePath, i, i2);
                break;
            default:
                Object[] clipSize = getClipSize(i, i2);
                videoDecoder = new ImageDecoder(sourcePath, i, i2, ((Integer) clipSize[0]).intValue(), ((Integer) clipSize[1]).intValue(), (Rotation) clipSize[2]);
                break;
        }
        this.currentDecoder = videoDecoder;
        Log.i("VideoDecoder", "Mediasurface connection: " + gPUMediaSurface.isConnected());
        removeDecoderWithSurface(gPUMediaSurface);
        while (this.mDecoderList.size() >= this.currentDecoderCapacity && this.currentDecoderCapacity > 0) {
            Log.i("VideoDecoder", "Release decoder: ");
            releaseDecoder(this.mDecoderList.remove(this.mDecoderList.size() - 1));
        }
        resetMediaSurface(gPUMediaSurface, i, i2);
        this.mDecoderList.add(0, this.currentDecoder);
        return this.currentDecoder;
    }

    private void releaseDecoder(MediaDecoder mediaDecoder) throws ExoPlaybackException {
        synchronized (this) {
            if (mediaDecoder.clipIndex < this.sequence.getClips().size()) {
                this.sequence.getClips().get(mediaDecoder.clipIndex).setDisableTransition(false);
                this.sequence.getClips().get(mediaDecoder.clipIndex).setTempUnavailable(false);
            }
            mediaDecoder.release();
            this.currentDecoderCapacity = 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean trimFeaturesForPerformance(Clip clip) {
        boolean z = true;
        synchronized (this) {
            int iIndexOf = this.sequence.getClips().indexOf(clip);
            if (this.currentDecoderCapacity <= this.mDecoderList.size()) {
                Log.i("VideoDecoder", "Cannot disable features... already disabled.. " + this.currentDecoderCapacity + " " + iIndexOf);
                z = false;
            } else {
                this.currentDecoderCapacity = this.mDecoderList.size();
                Log.i("VideoDecoder", "Disabling features... " + this.currentDecoderCapacity + " " + iIndexOf);
                if (Sequence.MODE_PLAYBACK) {
                    clip.setDisableTransition(true);
                }
            }
        }
        return z;
    }

    public void setSequence(Sequence sequence) {
        this.sequence = sequence;
    }

    public long getFrameAtTime(Context context, int i, int i2, final GPUMediaSurface gPUMediaSurface, final long j, final long j2, boolean z) throws ExoPlaybackException {
        long frameAtTime;
        synchronized (this.syncObject) {
            synchronized (this) {
                if (this.pendingException != null) {
                    ExoPlaybackException exoPlaybackException = this.pendingException;
                    this.pendingException = null;
                    throw exoPlaybackException;
                }
            }
            notifySequenceNotSetError();
            if (j >= 0) {
                VideoDecoder.FULL_CAPABILITY = !Sequence.MODE_PLAYBACK;
                getDecoder(context, i, i2, gPUMediaSurface);
                final Clip clip = this.sequence.getClips(i).get(i2);
                if (!z) {
                    try {
                        frameAtTime = this.currentDecoder.getFrameAtTime(j, gPUMediaSurface, j2);
                    } catch (ExoPlaybackException e2) {
                        e2.printStackTrace();
                        this.mDecoderList.remove(this.currentDecoder);
                        this.currentDecoder.release();
                        this.currentDecoder = null;
                        if (i2 >= this.sequence.getClips(i).size()) {
                            frameAtTime = -1;
                        } else if (isFailureDueToDecoderCapacity(e2, clip) && trimFeaturesForPerformance(clip)) {
                            frameAtTime = getFrameAtTime(context, i, i2, gPUMediaSurface, j, j2, false);
                        } else {
                            this.sequence.getClips(i).get(i2).setTempUnavailable(true);
                            throw new ExoPlaybackException("" + i2);
                        }
                    }
                } else {
                    Log.i("VideoDecoder", "async init " + i2);
                    final MediaDecoder mediaDecoder = this.currentDecoder;
                    new Thread(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoderCache.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (!mediaDecoder.isGettingFrame()) {
                                    mediaDecoder.getFrameAtTime(j, gPUMediaSurface, j2);
                                }
                            } catch (ExoPlaybackException e3) {
                                e3.printStackTrace();
                                try {
                                    mediaDecoder.release();
                                } catch (ExoPlaybackException e4) {
                                    e4.printStackTrace();
                                }
                                synchronized (MediaDecoderCache.this.syncObject) {
                                    MediaDecoderCache.this.mDecoderList.remove(mediaDecoder);
                                    synchronized (MediaDecoderCache.this) {
                                        int iIndexOf = MediaDecoderCache.this.sequence.getClips().indexOf(clip);
                                        if (iIndexOf != -1) {
                                            if (MediaDecoderCache.this.isFailureDueToDecoderCapacity(e3, clip) && !MediaDecoderCache.this.trimFeaturesForPerformance(clip)) {
                                                clip.setTempUnavailable(true);
                                                MediaDecoderCache.this.pendingException = new ExoPlaybackException("" + iIndexOf);
                                            }
                                            return;
                                        }
                                        Log.i("VideoDecoder", "Exception for clip which does not exist");
                                    }
                                }
                            }
                        }
                    }).start();
                    frameAtTime = -1;
                }
            } else {
                frameAtTime = -1;
            }
            return frameAtTime;
        }
    }

    public void resetAllDecoderPositions() {
        synchronized (this.syncObject) {
            for (int i = 0; i < this.mDecoderList.size(); i++) {
                this.mDecoderList.get(i).resetPosition = true;
            }
        }
    }

    public void releaseAllDecoders() throws ExoPlaybackException {
        synchronized (this.syncObject) {
            notifySequenceNotSetError();
            Iterator<MediaDecoder> it = this.mDecoderList.iterator();
            while (it.hasNext()) {
                releaseDecoder(it.next());
                this.currentDecoder = null;
            }
            this.mDecoderList.clear();
        }
    }
}
