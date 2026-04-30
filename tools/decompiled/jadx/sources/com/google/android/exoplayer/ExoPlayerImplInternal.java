package com.google.android.exoplayer;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.PriorityHandlerThread;
import com.google.android.exoplayer.util.TraceUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class ExoPlayerImplInternal implements Handler.Callback {
    private static final int IDLE_INTERVAL_MS = 1000;
    private static final int MSG_CUSTOM = 9;
    private static final int MSG_DO_SOME_WORK = 7;
    public static final int MSG_ERROR = 3;
    private static final int MSG_INCREMENTAL_PREPARE = 2;
    private static final int MSG_PREPARE = 1;
    private static final int MSG_RELEASE = 5;
    private static final int MSG_SEEK_TO = 6;
    private static final int MSG_SET_PLAY_WHEN_READY = 3;
    public static final int MSG_SET_PLAY_WHEN_READY_ACK = 2;
    private static final int MSG_SET_RENDERER_ENABLED = 8;
    public static final int MSG_STATE_CHANGED = 1;
    private static final int MSG_STOP = 4;
    private static final int PREPARE_INTERVAL_MS = 10;
    private static final int RENDERING_INTERVAL_MS = 10;
    private static final String TAG = "ExoPlayerImplInternal";
    private volatile long bufferedPositionUs;
    private volatile long durationUs;
    private long elapsedRealtimeUs;
    private final List<TrackRenderer> enabledRenderers;
    private final Handler eventHandler;
    private final Handler handler;
    private final HandlerThread internalPlaybackThread;
    private final MediaClock mediaClock;
    private final long minBufferUs;
    private final long minRebufferUs;
    private boolean playWhenReady;
    private volatile long positionUs;
    private boolean rebuffering;
    private boolean released;
    private final boolean[] rendererEnabledFlags;
    private TrackRenderer[] renderers;
    private int state;
    private TrackRenderer timeSourceTrackRenderer;
    private int customMessagesSent = 0;
    private int customMessagesProcessed = 0;

    public ExoPlayerImplInternal(Handler handler, boolean z, boolean[] zArr, int i, int i2) {
        this.eventHandler = handler;
        this.playWhenReady = z;
        this.rendererEnabledFlags = new boolean[zArr.length];
        this.minBufferUs = ((long) i) * 1000;
        this.minRebufferUs = ((long) i2) * 1000;
        for (int i3 = 0; i3 < zArr.length; i3++) {
            this.rendererEnabledFlags[i3] = zArr[i3];
        }
        this.state = 1;
        this.durationUs = -1L;
        this.bufferedPositionUs = -1L;
        this.mediaClock = new MediaClock();
        this.enabledRenderers = new ArrayList(zArr.length);
        this.internalPlaybackThread = new PriorityHandlerThread(getClass().getSimpleName() + ":Handler", -16);
        this.internalPlaybackThread.start();
        this.handler = new Handler(this.internalPlaybackThread.getLooper(), this);
    }

    public Looper getPlaybackLooper() {
        return this.internalPlaybackThread.getLooper();
    }

    public long getCurrentPosition() {
        return this.positionUs / 1000;
    }

    public long getBufferedPosition() {
        if (this.bufferedPositionUs == -1) {
            return -1L;
        }
        return this.bufferedPositionUs / 1000;
    }

    public long getDuration() {
        if (this.durationUs == -1) {
            return -1L;
        }
        return this.durationUs / 1000;
    }

    public void prepare(TrackRenderer... trackRendererArr) {
        this.handler.obtainMessage(1, trackRendererArr).sendToTarget();
    }

    public void setPlayWhenReady(boolean z) {
        this.handler.obtainMessage(3, z ? 1 : 0, 0).sendToTarget();
    }

    public void seekTo(long j) {
        this.handler.obtainMessage(6, Long.valueOf(j)).sendToTarget();
    }

    public void stop() {
        this.handler.sendEmptyMessage(4);
    }

    public void setRendererEnabled(int i, boolean z) {
        this.handler.obtainMessage(8, i, z ? 1 : 0).sendToTarget();
    }

    public void sendMessage(ExoPlayer.ExoPlayerComponent exoPlayerComponent, int i, Object obj) {
        this.customMessagesSent++;
        this.handler.obtainMessage(9, i, 0, Pair.create(exoPlayerComponent, obj)).sendToTarget();
    }

    public synchronized void blockingSendMessage(ExoPlayer.ExoPlayerComponent exoPlayerComponent, int i, Object obj) {
        if (this.released) {
            Log.w(TAG, "Sent message(" + i + ") after release. Message ignored.");
        } else {
            int i2 = this.customMessagesSent;
            this.customMessagesSent = i2 + 1;
            this.handler.obtainMessage(9, i, 0, Pair.create(exoPlayerComponent, obj)).sendToTarget();
            while (this.customMessagesProcessed <= i2) {
                try {
                    wait();
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public synchronized void release() {
        if (!this.released) {
            this.handler.sendEmptyMessage(5);
            while (!this.released) {
                try {
                    wait();
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                }
            }
            this.internalPlaybackThread.quit();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            switch (message.what) {
                case 1:
                    prepareInternal((TrackRenderer[]) message.obj);
                    z = true;
                    break;
                case 2:
                    incrementalPrepareInternal();
                    z = true;
                    break;
                case 3:
                    setPlayWhenReadyInternal(message.arg1 != 0);
                    z = true;
                    break;
                case 4:
                    stopInternal();
                    z = true;
                    break;
                case 5:
                    releaseInternal();
                    z = true;
                    break;
                case 6:
                    seekToInternal(((Long) message.obj).longValue());
                    z = true;
                    break;
                case 7:
                    doSomeWork();
                    z = true;
                    break;
                case 8:
                    setRendererEnabledInternal(message.arg1, message.arg2 != 0);
                    z = true;
                    break;
                case 9:
                    sendMessageInternal(message.arg1, message.obj);
                    z = true;
                    break;
            }
            return z;
        } catch (ExoPlaybackException e2) {
            Log.e(TAG, "Internal track renderer error.", e2);
            this.eventHandler.obtainMessage(3, e2).sendToTarget();
            stopInternal();
            return true;
        } catch (RuntimeException e3) {
            Log.e(TAG, "Internal runtime error.", e3);
            this.eventHandler.obtainMessage(3, new ExoPlaybackException(e3)).sendToTarget();
            stopInternal();
            return true;
        }
    }

    private void setState(int i) {
        if (this.state != i) {
            this.state = i;
            this.eventHandler.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    private void prepareInternal(TrackRenderer[] trackRendererArr) {
        this.rebuffering = false;
        this.renderers = trackRendererArr;
        for (int i = 0; i < trackRendererArr.length; i++) {
            if (trackRendererArr[i].isTimeSource()) {
                Assertions.checkState(this.timeSourceTrackRenderer == null);
                this.timeSourceTrackRenderer = trackRendererArr[i];
            }
        }
        setState(2);
        this.handler.sendEmptyMessage(2);
    }

    private void incrementalPrepareInternal() throws ExoPlaybackException {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = true;
        for (int i = 0; i < this.renderers.length; i++) {
            if (this.renderers[i].getState() == 0 && this.renderers[i].prepare() == 0) {
                z = false;
            }
        }
        if (!z) {
            scheduleNextOperation(2, jElapsedRealtime, 10L);
            return;
        }
        long jMax = 0;
        boolean z2 = true;
        boolean z3 = true;
        for (int i2 = 0; i2 < this.renderers.length; i2++) {
            TrackRenderer trackRenderer = this.renderers[i2];
            if (this.rendererEnabledFlags[i2] && trackRenderer.getState() == 1) {
                trackRenderer.enable(this.positionUs, false);
                this.enabledRenderers.add(trackRenderer);
                z2 = z2 && trackRenderer.isEnded();
                z3 = z3 && rendererReadyOrEnded(trackRenderer);
                if (jMax != -1) {
                    long durationUs = trackRenderer.getDurationUs();
                    if (durationUs == -1) {
                        jMax = -1;
                    } else if (durationUs != -2) {
                        jMax = Math.max(jMax, durationUs);
                    }
                }
            }
        }
        this.durationUs = jMax;
        if (z2) {
            setState(5);
        } else {
            setState(z3 ? 4 : 3);
            if (this.playWhenReady && this.state == 4) {
                startRenderers();
            }
        }
        this.handler.sendEmptyMessage(7);
    }

    private boolean rendererReadyOrEnded(TrackRenderer trackRenderer) {
        boolean z = false;
        if (trackRenderer.isEnded()) {
            return true;
        }
        if (!trackRenderer.isReady()) {
            return false;
        }
        if (this.state == 4) {
            return true;
        }
        long durationUs = trackRenderer.getDurationUs();
        long bufferedPositionUs = trackRenderer.getBufferedPositionUs();
        long j = this.rebuffering ? this.minRebufferUs : this.minBufferUs;
        if (j <= 0 || bufferedPositionUs == -1 || bufferedPositionUs == -3 || bufferedPositionUs >= j + this.positionUs || (durationUs != -1 && durationUs != -2 && bufferedPositionUs >= durationUs)) {
            z = true;
        }
        return z;
    }

    private void setPlayWhenReadyInternal(boolean z) throws ExoPlaybackException {
        try {
            this.rebuffering = false;
            this.playWhenReady = z;
            if (!z) {
                stopRenderers();
                updatePositionUs();
            } else if (this.state == 4) {
                startRenderers();
                this.handler.sendEmptyMessage(7);
            } else if (this.state == 3) {
                this.handler.sendEmptyMessage(7);
            }
        } finally {
            this.eventHandler.obtainMessage(2).sendToTarget();
        }
    }

    private void startRenderers() throws ExoPlaybackException {
        int i = 0;
        this.rebuffering = false;
        this.mediaClock.start();
        while (true) {
            int i2 = i;
            if (i2 < this.enabledRenderers.size()) {
                this.enabledRenderers.get(i2).start();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private void stopRenderers() throws ExoPlaybackException {
        this.mediaClock.stop();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.enabledRenderers.size()) {
                ensureStopped(this.enabledRenderers.get(i2));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private void updatePositionUs() {
        if (this.timeSourceTrackRenderer != null && this.enabledRenderers.contains(this.timeSourceTrackRenderer) && !this.timeSourceTrackRenderer.isEnded()) {
            this.positionUs = this.timeSourceTrackRenderer.getCurrentPositionUs();
            this.mediaClock.setPositionUs(this.positionUs);
        } else {
            this.positionUs = this.mediaClock.getPositionUs();
        }
        this.elapsedRealtimeUs = SystemClock.elapsedRealtime() * 1000;
    }

    private void doSomeWork() throws ExoPlaybackException {
        TraceUtil.beginSection("doSomeWork");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.durationUs != -1 ? this.durationUs : Long.MAX_VALUE;
        updatePositionUs();
        boolean z = true;
        boolean z2 = true;
        long jMin = j;
        for (int i = 0; i < this.enabledRenderers.size(); i++) {
            TrackRenderer trackRenderer = this.enabledRenderers.get(i);
            trackRenderer.doSomeWork(this.positionUs, this.elapsedRealtimeUs);
            z2 = z2 && trackRenderer.isEnded();
            z = z && rendererReadyOrEnded(trackRenderer);
            if (jMin != -1) {
                long durationUs = trackRenderer.getDurationUs();
                long bufferedPositionUs = trackRenderer.getBufferedPositionUs();
                if (bufferedPositionUs == -1) {
                    jMin = -1;
                } else if (bufferedPositionUs != -3 && (durationUs == -1 || durationUs == -2 || bufferedPositionUs < durationUs)) {
                    jMin = Math.min(jMin, bufferedPositionUs);
                }
            }
        }
        this.bufferedPositionUs = jMin;
        if (z2) {
            setState(5);
            stopRenderers();
        } else if (this.state == 3 && z) {
            setState(4);
            if (this.playWhenReady) {
                startRenderers();
            }
        } else if (this.state == 4 && !z) {
            this.rebuffering = this.playWhenReady;
            setState(3);
            stopRenderers();
        }
        this.handler.removeMessages(7);
        if ((this.playWhenReady && this.state == 4) || this.state == 3) {
            scheduleNextOperation(7, jElapsedRealtime, 10L);
        } else if (!this.enabledRenderers.isEmpty()) {
            scheduleNextOperation(7, jElapsedRealtime, 1000L);
        }
        TraceUtil.endSection();
    }

    private void scheduleNextOperation(int i, long j, long j2) {
        long jElapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (jElapsedRealtime <= 0) {
            this.handler.sendEmptyMessage(i);
        } else {
            this.handler.sendEmptyMessageDelayed(i, jElapsedRealtime);
        }
    }

    private void seekToInternal(long j) throws ExoPlaybackException {
        int i = 0;
        this.rebuffering = false;
        this.positionUs = 1000 * j;
        this.mediaClock.stop();
        this.mediaClock.setPositionUs(this.positionUs);
        if (this.state == 1 || this.state == 2) {
            return;
        }
        while (true) {
            int i2 = i;
            if (i2 < this.enabledRenderers.size()) {
                TrackRenderer trackRenderer = this.enabledRenderers.get(i2);
                ensureStopped(trackRenderer);
                trackRenderer.seekTo(this.positionUs);
                i = i2 + 1;
            } else {
                setState(3);
                this.handler.sendEmptyMessage(7);
                return;
            }
        }
    }

    private void stopInternal() {
        this.rebuffering = false;
        resetInternal();
    }

    private void releaseInternal() {
        resetInternal();
        synchronized (this) {
            this.released = true;
            notifyAll();
        }
    }

    private void resetInternal() {
        this.handler.removeMessages(7);
        this.handler.removeMessages(2);
        this.mediaClock.stop();
        if (this.renderers != null) {
            for (int i = 0; i < this.renderers.length; i++) {
                TrackRenderer trackRenderer = this.renderers[i];
                stopAndDisable(trackRenderer);
                release(trackRenderer);
            }
            this.renderers = null;
            this.timeSourceTrackRenderer = null;
            this.enabledRenderers.clear();
            setState(1);
        }
    }

    private void stopAndDisable(TrackRenderer trackRenderer) {
        try {
            ensureStopped(trackRenderer);
            if (trackRenderer.getState() == 2) {
                trackRenderer.disable();
            }
        } catch (ExoPlaybackException e2) {
            Log.e(TAG, "Stop failed.", e2);
        } catch (RuntimeException e3) {
            Log.e(TAG, "Stop failed.", e3);
        }
    }

    private void release(TrackRenderer trackRenderer) {
        try {
            trackRenderer.release();
        } catch (ExoPlaybackException e2) {
            Log.e(TAG, "Release failed.", e2);
        } catch (RuntimeException e3) {
            Log.e(TAG, "Release failed.", e3);
        }
    }

    private <T> void sendMessageInternal(int i, Object obj) throws ExoPlaybackException {
        try {
            Pair pair = (Pair) obj;
            ((ExoPlayer.ExoPlayerComponent) pair.first).handleMessage(i, pair.second);
            synchronized (this) {
                this.customMessagesProcessed++;
                notifyAll();
            }
            if (this.state == 1 || this.state == 2) {
                return;
            }
            this.handler.sendEmptyMessage(7);
        } catch (Throwable th) {
            synchronized (this) {
                this.customMessagesProcessed++;
                notifyAll();
                throw th;
            }
        }
    }

    private void setRendererEnabledInternal(int i, boolean z) throws ExoPlaybackException {
        if (this.rendererEnabledFlags[i] != z) {
            this.rendererEnabledFlags[i] = z;
            if (this.state != 1 && this.state != 2) {
                TrackRenderer trackRenderer = this.renderers[i];
                int state = trackRenderer.getState();
                if (state == 1 || state == 2 || state == 3) {
                    if (z) {
                        boolean z2 = this.playWhenReady && this.state == 4;
                        trackRenderer.enable(this.positionUs, z2);
                        this.enabledRenderers.add(trackRenderer);
                        if (z2) {
                            trackRenderer.start();
                        }
                        this.handler.sendEmptyMessage(7);
                        return;
                    }
                    if (trackRenderer == this.timeSourceTrackRenderer) {
                        this.mediaClock.setPositionUs(trackRenderer.getCurrentPositionUs());
                    }
                    ensureStopped(trackRenderer);
                    this.enabledRenderers.remove(trackRenderer);
                    trackRenderer.disable();
                }
            }
        }
    }

    private void ensureStopped(TrackRenderer trackRenderer) throws ExoPlaybackException {
        if (trackRenderer.getState() == 3) {
            trackRenderer.stop();
        }
    }
}
