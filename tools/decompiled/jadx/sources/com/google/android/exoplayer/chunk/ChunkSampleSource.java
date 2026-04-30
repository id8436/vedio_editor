package com.google.android.exoplayer.chunk;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.LoadControl;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ChunkSampleSource implements SampleSource, Loader.Callback {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private static final int NO_RESET_PENDING = -1;
    private static final int STATE_ENABLED = 2;
    private static final int STATE_PREPARED = 1;
    private static final int STATE_UNPREPARED = 0;
    private final int bufferSizeContribution;
    private final ChunkSource chunkSource;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private boolean currentLoadableExceptionFatal;
    private long currentLoadableExceptionTimestamp;
    private final ChunkOperationHolder currentLoadableHolder;
    private volatile Format downstreamFormat;
    private MediaFormat downstreamMediaFormat;
    private long downstreamPositionUs;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private final boolean frameAccurateSeeking;
    private long lastPerformedBufferOperation;
    private long lastSeekPositionUs;
    private final LoadControl loadControl;
    private Loader loader;
    private final LinkedList<MediaChunk> mediaChunks;
    private final int minLoadableRetryCount;
    private boolean pendingDiscontinuity;
    private long pendingResetPositionUs;
    private final List<MediaChunk> readOnlyMediaChunks;
    private int state;

    public interface EventListener {
        void onConsumptionError(int i, IOException iOException);

        void onDownstreamDiscarded(int i, int i2, int i3, long j);

        void onDownstreamFormatChanged(int i, String str, int i2, int i3);

        void onLoadCanceled(int i, long j);

        void onLoadCompleted(int i, long j);

        void onLoadStarted(int i, String str, int i2, boolean z, int i3, int i4, long j);

        void onUpstreamDiscarded(int i, int i2, int i3, long j);

        void onUpstreamError(int i, IOException iOException);
    }

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int i, boolean z) {
        this(chunkSource, loadControl, i, z, null, null, 0);
    }

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int i, boolean z, Handler handler, EventListener eventListener, int i2) {
        this(chunkSource, loadControl, i, z, handler, eventListener, i2, 3);
    }

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int i, boolean z, Handler handler, EventListener eventListener, int i2, int i3) {
        this.chunkSource = chunkSource;
        this.loadControl = loadControl;
        this.bufferSizeContribution = i;
        this.frameAccurateSeeking = z;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.eventSourceId = i2;
        this.minLoadableRetryCount = i3;
        this.currentLoadableHolder = new ChunkOperationHolder();
        this.mediaChunks = new LinkedList<>();
        this.readOnlyMediaChunks = Collections.unmodifiableList(this.mediaChunks);
        this.state = 0;
    }

    public Format getFormat() {
        return this.downstreamFormat;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public boolean prepare() {
        Assertions.checkState(this.state == 0);
        this.loader = new Loader("Loader:" + this.chunkSource.getTrackInfo().mimeType);
        this.state = 1;
        return true;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public int getTrackCount() {
        Assertions.checkState(this.state != 0);
        return 1;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public TrackInfo getTrackInfo(int i) {
        Assertions.checkState(this.state != 0);
        Assertions.checkState(i == 0);
        return this.chunkSource.getTrackInfo();
    }

    @Override // com.google.android.exoplayer.SampleSource
    public void enable(int i, long j) {
        Assertions.checkState(this.state == 1);
        Assertions.checkState(i == 0);
        this.state = 2;
        this.chunkSource.enable();
        this.loadControl.register(this, this.bufferSizeContribution);
        this.downstreamFormat = null;
        this.downstreamMediaFormat = null;
        this.downstreamPositionUs = j;
        this.lastSeekPositionUs = j;
        restartFrom(j);
    }

    @Override // com.google.android.exoplayer.SampleSource
    public void disable(int i) {
        Assertions.checkState(this.state == 2);
        Assertions.checkState(i == 0);
        this.pendingDiscontinuity = false;
        this.state = 1;
        try {
            this.chunkSource.disable(this.mediaChunks);
            this.loadControl.unregister(this);
            if (this.loader.isLoading()) {
                this.loader.cancelLoading();
                return;
            }
            clearMediaChunks();
            clearCurrentLoadable();
            this.loadControl.trimAllocator();
        } catch (Throwable th) {
            this.loadControl.unregister(this);
            if (this.loader.isLoading()) {
                this.loader.cancelLoading();
            } else {
                clearMediaChunks();
                clearCurrentLoadable();
                this.loadControl.trimAllocator();
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer.SampleSource
    public boolean continueBuffering(long j) throws IOException {
        boolean z = false;
        Assertions.checkState(this.state == 2);
        this.downstreamPositionUs = j;
        this.chunkSource.continueBuffering(j);
        updateLoadControl();
        if (!isPendingReset() && !this.mediaChunks.isEmpty()) {
            if (this.mediaChunks.getFirst().sampleAvailable()) {
                z = true;
            } else {
                z = this.mediaChunks.size() > 1 && this.mediaChunks.get(1).sampleAvailable();
            }
        }
        if (!z) {
            maybeThrowLoadableException();
        }
        return z;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder, boolean z) throws IOException {
        Assertions.checkState(this.state == 2);
        Assertions.checkState(i == 0);
        if (this.pendingDiscontinuity) {
            this.pendingDiscontinuity = false;
            return -5;
        }
        if (z) {
            return -2;
        }
        this.downstreamPositionUs = j;
        if (isPendingReset()) {
            maybeThrowLoadableException();
            IOException error = this.chunkSource.getError();
            if (error != null) {
                throw error;
            }
            return -2;
        }
        MediaChunk first = this.mediaChunks.getFirst();
        if (first.isReadFinished()) {
            if (this.mediaChunks.size() > 1) {
                discardDownstreamMediaChunk();
                this.mediaChunks.getFirst().seekToStart();
                return readData(i, j, mediaFormatHolder, sampleHolder, false);
            }
            if (first.isLastChunk()) {
                return -1;
            }
            IOException error2 = this.chunkSource.getError();
            if (error2 != null) {
                throw error2;
            }
            return -2;
        }
        if (this.downstreamFormat == null || !this.downstreamFormat.equals(first.format)) {
            notifyDownstreamFormatChanged(first.format.id, first.trigger, first.startTimeUs);
            this.downstreamFormat = first.format;
        }
        if (!first.prepare()) {
            if (this.currentLoadableException != null) {
                throw this.currentLoadableException;
            }
            return -2;
        }
        MediaFormat mediaFormat = first.getMediaFormat();
        if (mediaFormat != null && !mediaFormat.equals(this.downstreamMediaFormat, true)) {
            this.chunkSource.getMaxVideoDimensions(mediaFormat);
            mediaFormatHolder.format = mediaFormat;
            mediaFormatHolder.drmInitData = first.getPsshInfo();
            this.downstreamMediaFormat = mediaFormat;
            return -4;
        }
        if (first.read(sampleHolder)) {
            sampleHolder.decodeOnly = this.frameAccurateSeeking && sampleHolder.timeUs < this.lastSeekPositionUs;
            onSampleRead(first, sampleHolder);
            return -3;
        }
        maybeThrowLoadableException();
        return -2;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public void seekToUs(long j) {
        Assertions.checkState(this.state == 2);
        this.downstreamPositionUs = j;
        this.lastSeekPositionUs = j;
        if (this.pendingResetPositionUs != j) {
            MediaChunk mediaChunk = getMediaChunk(j);
            if (mediaChunk == null) {
                restartFrom(j);
                this.pendingDiscontinuity = true;
            } else {
                this.pendingDiscontinuity = mediaChunk.seekTo(j, mediaChunk == this.mediaChunks.getFirst()) | this.pendingDiscontinuity;
                discardDownstreamMediaChunks(mediaChunk);
                updateLoadControl();
            }
        }
    }

    private void maybeThrowLoadableException() throws IOException {
        if (this.currentLoadableException != null) {
            if (this.currentLoadableExceptionFatal || this.currentLoadableExceptionCount > this.minLoadableRetryCount) {
                throw this.currentLoadableException;
            }
        }
    }

    private MediaChunk getMediaChunk(long j) {
        Iterator<MediaChunk> it = this.mediaChunks.iterator();
        while (it.hasNext()) {
            MediaChunk next = it.next();
            if (j < next.startTimeUs) {
                return null;
            }
            if (next.isLastChunk() || j < next.endTimeUs) {
                return next;
            }
        }
        return null;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public long getBufferedPositionUs() {
        Assertions.checkState(this.state == 2);
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        MediaChunk last = this.mediaChunks.getLast();
        Chunk chunk = this.currentLoadableHolder.chunk;
        if (chunk != null && last == chunk) {
            long length = last.getLength();
            if (length != -1 && length != 0) {
                return ((last.bytesLoaded() * (last.endTimeUs - last.startTimeUs)) / length) + last.startTimeUs;
            }
            return last.startTimeUs;
        }
        if (last.isLastChunk()) {
            return -3L;
        }
        return last.endTimeUs;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public void release() {
        Assertions.checkState(this.state != 2);
        if (this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
        this.state = 0;
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(Loader.Loadable loadable) {
        Chunk chunk = this.currentLoadableHolder.chunk;
        notifyLoadCompleted(chunk.bytesLoaded());
        try {
            try {
                chunk.consume();
                if (!isMediaChunk(chunk)) {
                    chunk.release();
                }
                if (!this.currentLoadableExceptionFatal) {
                    clearCurrentLoadable();
                }
                updateLoadControl();
            } catch (IOException e2) {
                this.currentLoadableException = e2;
                this.currentLoadableExceptionCount++;
                this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
                this.currentLoadableExceptionFatal = true;
                notifyConsumptionError(e2);
                if (!isMediaChunk(chunk)) {
                    chunk.release();
                }
                if (!this.currentLoadableExceptionFatal) {
                    clearCurrentLoadable();
                }
                updateLoadControl();
            }
        } catch (Throwable th) {
            if (!isMediaChunk(chunk)) {
                chunk.release();
            }
            if (!this.currentLoadableExceptionFatal) {
                clearCurrentLoadable();
            }
            updateLoadControl();
            throw th;
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(Loader.Loadable loadable) {
        Chunk chunk = this.currentLoadableHolder.chunk;
        notifyLoadCanceled(chunk.bytesLoaded());
        if (!isMediaChunk(chunk)) {
            chunk.release();
        }
        clearCurrentLoadable();
        if (this.state == 2) {
            restartFrom(this.pendingResetPositionUs);
        } else {
            clearMediaChunks();
            this.loadControl.trimAllocator();
        }
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        this.currentLoadableException = iOException;
        this.currentLoadableExceptionCount++;
        this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        notifyUpstreamError(iOException);
        this.chunkSource.onChunkLoadError(this.currentLoadableHolder.chunk, iOException);
        updateLoadControl();
    }

    protected void onSampleRead(MediaChunk mediaChunk, SampleHolder sampleHolder) {
    }

    private void restartFrom(long j) {
        this.pendingResetPositionUs = j;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
            return;
        }
        clearMediaChunks();
        clearCurrentLoadable();
        updateLoadControl();
    }

    private void clearMediaChunks() {
        discardDownstreamMediaChunks(null);
    }

    private void clearCurrentLoadable() {
        this.currentLoadableHolder.chunk = null;
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = 0;
        this.currentLoadableExceptionFatal = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateLoadControl() {
        /*
            r14 = this;
            boolean r0 = r14.currentLoadableExceptionFatal
            if (r0 == 0) goto L11
            com.google.android.exoplayer.LoadControl r0 = r14.loadControl
            long r2 = r14.downstreamPositionUs
            r4 = -1
            r6 = 0
            r7 = 1
            r1 = r14
            r0.update(r1, r2, r4, r6, r7)
        L10:
            return
        L11:
            long r12 = android.os.SystemClock.elapsedRealtime()
            long r10 = r14.getNextLoadPositionUs()
            java.io.IOException r0 = r14.currentLoadableException
            if (r0 == 0) goto L8c
            r0 = 1
            r8 = r0
        L1f:
            com.google.android.exoplayer.upstream.Loader r0 = r14.loader
            boolean r0 = r0.isLoading()
            if (r0 != 0) goto L29
            if (r8 == 0) goto L8f
        L29:
            r0 = 1
            r9 = r0
        L2b:
            if (r9 != 0) goto La8
            com.google.android.exoplayer.chunk.ChunkOperationHolder r0 = r14.currentLoadableHolder
            com.google.android.exoplayer.chunk.Chunk r0 = r0.chunk
            if (r0 != 0) goto L39
            r0 = -1
            int r0 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r0 != 0) goto L43
        L39:
            long r0 = r14.lastPerformedBufferOperation
            long r0 = r12 - r0
            r2 = 2000(0x7d0, double:9.88E-321)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto La8
        L43:
            r14.lastPerformedBufferOperation = r12
            com.google.android.exoplayer.chunk.ChunkOperationHolder r0 = r14.currentLoadableHolder
            java.util.List<com.google.android.exoplayer.chunk.MediaChunk> r1 = r14.readOnlyMediaChunks
            int r1 = r1.size()
            r0.queueSize = r1
            com.google.android.exoplayer.chunk.ChunkSource r0 = r14.chunkSource
            java.util.List<com.google.android.exoplayer.chunk.MediaChunk> r1 = r14.readOnlyMediaChunks
            long r2 = r14.pendingResetPositionUs
            long r4 = r14.downstreamPositionUs
            com.google.android.exoplayer.chunk.ChunkOperationHolder r6 = r14.currentLoadableHolder
            r0.getChunkOperation(r1, r2, r4, r6)
            com.google.android.exoplayer.chunk.ChunkOperationHolder r0 = r14.currentLoadableHolder
            int r0 = r0.queueSize
            boolean r0 = r14.discardUpstreamMediaChunks(r0)
            com.google.android.exoplayer.chunk.ChunkOperationHolder r1 = r14.currentLoadableHolder
            com.google.android.exoplayer.chunk.Chunk r1 = r1.chunk
            if (r1 != 0) goto L92
            r4 = -1
        L6c:
            com.google.android.exoplayer.LoadControl r0 = r14.loadControl
            long r2 = r14.downstreamPositionUs
            r7 = 0
            r1 = r14
            r6 = r9
            boolean r0 = r0.update(r1, r2, r4, r6, r7)
            if (r8 == 0) goto L99
            long r0 = r14.currentLoadableExceptionTimestamp
            long r0 = r12 - r0
            int r2 = r14.currentLoadableExceptionCount
            long r2 = (long) r2
            long r2 = r14.getRetryDelayMillis(r2)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L10
            r14.resumeFromBackOff()
            goto L10
        L8c:
            r0 = 0
            r8 = r0
            goto L1f
        L8f:
            r0 = 0
            r9 = r0
            goto L2b
        L92:
            if (r0 == 0) goto La8
            long r4 = r14.getNextLoadPositionUs()
            goto L6c
        L99:
            com.google.android.exoplayer.upstream.Loader r1 = r14.loader
            boolean r1 = r1.isLoading()
            if (r1 != 0) goto L10
            if (r0 == 0) goto L10
            r14.maybeStartLoading()
            goto L10
        La8:
            r4 = r10
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.chunk.ChunkSampleSource.updateLoadControl():void");
    }

    private long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        MediaChunk last = this.mediaChunks.getLast();
        if (last.nextChunkIndex == -1) {
            return -1L;
        }
        return last.endTimeUs;
    }

    private void resumeFromBackOff() {
        this.currentLoadableException = null;
        Chunk chunk = this.currentLoadableHolder.chunk;
        if (!isMediaChunk(chunk)) {
            this.currentLoadableHolder.queueSize = this.readOnlyMediaChunks.size();
            this.chunkSource.getChunkOperation(this.readOnlyMediaChunks, this.pendingResetPositionUs, this.downstreamPositionUs, this.currentLoadableHolder);
            discardUpstreamMediaChunks(this.currentLoadableHolder.queueSize);
            if (this.currentLoadableHolder.chunk == chunk) {
                this.loader.startLoading(chunk, this);
                return;
            } else {
                chunk.release();
                maybeStartLoading();
                return;
            }
        }
        if (chunk == this.mediaChunks.getFirst()) {
            this.loader.startLoading(chunk, this);
            return;
        }
        MediaChunk mediaChunkRemoveLast = this.mediaChunks.removeLast();
        Assertions.checkState(chunk == mediaChunkRemoveLast);
        this.currentLoadableHolder.queueSize = this.readOnlyMediaChunks.size();
        this.chunkSource.getChunkOperation(this.readOnlyMediaChunks, this.pendingResetPositionUs, this.downstreamPositionUs, this.currentLoadableHolder);
        this.mediaChunks.add(mediaChunkRemoveLast);
        if (this.currentLoadableHolder.chunk == chunk) {
            this.loader.startLoading(chunk, this);
            return;
        }
        discardUpstreamMediaChunks(this.currentLoadableHolder.queueSize);
        clearCurrentLoadable();
        maybeStartLoading();
    }

    private void maybeStartLoading() {
        Chunk chunk = this.currentLoadableHolder.chunk;
        if (chunk != null) {
            chunk.init(this.loadControl.getAllocator());
            if (isMediaChunk(chunk)) {
                MediaChunk mediaChunk = (MediaChunk) chunk;
                if (isPendingReset()) {
                    mediaChunk.seekTo(this.pendingResetPositionUs, false);
                    this.pendingResetPositionUs = -1L;
                }
                this.mediaChunks.add(mediaChunk);
                notifyLoadStarted(mediaChunk.format.id, mediaChunk.trigger, false, mediaChunk.startTimeUs, mediaChunk.endTimeUs, mediaChunk.getLength());
            } else {
                notifyLoadStarted(chunk.format.id, chunk.trigger, true, -1L, -1L, chunk.getLength());
            }
            this.loader.startLoading(chunk, this);
        }
    }

    private void discardDownstreamMediaChunks(MediaChunk mediaChunk) {
        long j = 0;
        if (!this.mediaChunks.isEmpty() && mediaChunk != this.mediaChunks.getFirst()) {
            long j2 = this.mediaChunks.getFirst().startTimeUs;
            long jBytesLoaded = 0;
            while (!this.mediaChunks.isEmpty() && mediaChunk != this.mediaChunks.getFirst()) {
                MediaChunk mediaChunkRemoveFirst = this.mediaChunks.removeFirst();
                jBytesLoaded += mediaChunkRemoveFirst.bytesLoaded();
                j = mediaChunkRemoveFirst.endTimeUs;
                mediaChunkRemoveFirst.release();
            }
            notifyDownstreamDiscarded(j2, j, jBytesLoaded);
        }
    }

    private void discardDownstreamMediaChunk() {
        MediaChunk mediaChunkRemoveFirst = this.mediaChunks.removeFirst();
        long jBytesLoaded = mediaChunkRemoveFirst.bytesLoaded();
        mediaChunkRemoveFirst.release();
        notifyDownstreamDiscarded(mediaChunkRemoveFirst.startTimeUs, mediaChunkRemoveFirst.endTimeUs, jBytesLoaded);
    }

    private boolean discardUpstreamMediaChunks(int i) {
        long j = 0;
        if (this.mediaChunks.size() <= i) {
            return false;
        }
        long j2 = this.mediaChunks.getLast().endTimeUs;
        long jBytesLoaded = 0;
        while (this.mediaChunks.size() > i) {
            MediaChunk mediaChunkRemoveLast = this.mediaChunks.removeLast();
            jBytesLoaded += mediaChunkRemoveLast.bytesLoaded();
            j = mediaChunkRemoveLast.startTimeUs;
            mediaChunkRemoveLast.release();
        }
        notifyUpstreamDiscarded(j, j2, jBytesLoaded);
        return true;
    }

    private boolean isMediaChunk(Chunk chunk) {
        return chunk instanceof MediaChunk;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != -1;
    }

    private long getRetryDelayMillis(long j) {
        return Math.min((j - 1) * 1000, 5000L);
    }

    protected final int usToMs(long j) {
        return (int) (j / 1000);
    }

    private void notifyLoadStarted(final String str, final int i, final boolean z, final long j, final long j2, final long j3) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.1
                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onLoadStarted(ChunkSampleSource.this.eventSourceId, str, i, z, ChunkSampleSource.this.usToMs(j), ChunkSampleSource.this.usToMs(j2), j3);
                }
            });
        }
    }

    private void notifyLoadCompleted(final long j) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.2
                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onLoadCompleted(ChunkSampleSource.this.eventSourceId, j);
                }
            });
        }
    }

    private void notifyLoadCanceled(final long j) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.3
                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onLoadCanceled(ChunkSampleSource.this.eventSourceId, j);
                }
            });
        }
    }

    private void notifyUpstreamError(final IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.4
                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onUpstreamError(ChunkSampleSource.this.eventSourceId, iOException);
                }
            });
        }
    }

    private void notifyConsumptionError(final IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.5
                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onConsumptionError(ChunkSampleSource.this.eventSourceId, iOException);
                }
            });
        }
    }

    private void notifyUpstreamDiscarded(final long j, final long j2, final long j3) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.6
                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onUpstreamDiscarded(ChunkSampleSource.this.eventSourceId, ChunkSampleSource.this.usToMs(j), ChunkSampleSource.this.usToMs(j2), j3);
                }
            });
        }
    }

    private void notifyDownstreamFormatChanged(final String str, final int i, final long j) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.7
                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onDownstreamFormatChanged(ChunkSampleSource.this.eventSourceId, str, i, ChunkSampleSource.this.usToMs(j));
                }
            });
        }
    }

    private void notifyDownstreamDiscarded(final long j, final long j2, final long j3) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.chunk.ChunkSampleSource.8
                @Override // java.lang.Runnable
                public void run() {
                    ChunkSampleSource.this.eventListener.onDownstreamDiscarded(ChunkSampleSource.this.eventSourceId, ChunkSampleSource.this.usToMs(j), ChunkSampleSource.this.usToMs(j2), j3);
                }
            });
        }
    }
}
