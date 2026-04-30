package com.google.android.exoplayer;

import android.os.Handler;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.NetworkLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultLoadControl implements LoadControl {
    private static final int ABOVE_HIGH_WATERMARK = 0;
    private static final int BELOW_LOW_WATERMARK = 2;
    private static final int BETWEEN_WATERMARKS = 1;
    public static final float DEFAULT_HIGH_POOL_LOAD = 0.8f;
    public static final int DEFAULT_HIGH_WATERMARK_MS = 30000;
    public static final float DEFAULT_LOW_POOL_LOAD = 0.2f;
    public static final int DEFAULT_LOW_WATERMARK_MS = 15000;
    private final Allocator allocator;
    private int bufferPoolState;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private boolean fillingBuffers;
    private final float highPoolLoad;
    private final long highWatermarkUs;
    private final HashMap<Object, LoaderState> loaderStates;
    private final List<Object> loaders;
    private final float lowPoolLoad;
    private final long lowWatermarkUs;
    private long maxLoadStartPositionUs;
    private boolean streamingPrioritySet;
    private int targetBufferSize;

    public interface EventListener {
        void onLoadingChanged(boolean z);
    }

    public DefaultLoadControl(Allocator allocator) {
        this(allocator, null, null);
    }

    public DefaultLoadControl(Allocator allocator, Handler handler, EventListener eventListener) {
        this(allocator, handler, eventListener, DEFAULT_LOW_WATERMARK_MS, DEFAULT_HIGH_WATERMARK_MS, 0.2f, 0.8f);
    }

    public DefaultLoadControl(Allocator allocator, Handler handler, EventListener eventListener, int i, int i2, float f2, float f3) {
        this.allocator = allocator;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.loaders = new ArrayList();
        this.loaderStates = new HashMap<>();
        this.lowWatermarkUs = ((long) i) * 1000;
        this.highWatermarkUs = ((long) i2) * 1000;
        this.lowPoolLoad = f2;
        this.highPoolLoad = f3;
    }

    @Override // com.google.android.exoplayer.LoadControl
    public void register(Object obj, int i) {
        this.loaders.add(obj);
        this.loaderStates.put(obj, new LoaderState(i));
        this.targetBufferSize += i;
    }

    @Override // com.google.android.exoplayer.LoadControl
    public void unregister(Object obj) {
        this.loaders.remove(obj);
        this.targetBufferSize -= this.loaderStates.remove(obj).bufferSizeContribution;
        updateControlState();
    }

    @Override // com.google.android.exoplayer.LoadControl
    public void trimAllocator() {
        this.allocator.trim(this.targetBufferSize);
    }

    @Override // com.google.android.exoplayer.LoadControl
    public Allocator getAllocator() {
        return this.allocator;
    }

    @Override // com.google.android.exoplayer.LoadControl
    public boolean update(Object obj, long j, long j2, boolean z, boolean z2) {
        int loaderBufferState = getLoaderBufferState(j, j2);
        LoaderState loaderState = this.loaderStates.get(obj);
        boolean z3 = (loaderState.bufferState == loaderBufferState && loaderState.nextLoadPositionUs == j2 && loaderState.loading == z && loaderState.failed == z2) ? false : true;
        if (z3) {
            loaderState.bufferState = loaderBufferState;
            loaderState.nextLoadPositionUs = j2;
            loaderState.loading = z;
            loaderState.failed = z2;
        }
        int allocatedSize = this.allocator.getAllocatedSize();
        int bufferPoolState = getBufferPoolState(allocatedSize);
        boolean z4 = this.bufferPoolState != bufferPoolState;
        if (z4) {
            this.bufferPoolState = bufferPoolState;
        }
        if (z3 || z4) {
            updateControlState();
        }
        return allocatedSize < this.targetBufferSize && j2 != -1 && j2 <= this.maxLoadStartPositionUs;
    }

    private int getLoaderBufferState(long j, long j2) {
        if (j2 == -1) {
            return 0;
        }
        long j3 = j2 - j;
        if (j3 <= this.highWatermarkUs) {
            return j3 < this.lowWatermarkUs ? 2 : 1;
        }
        return 0;
    }

    private int getBufferPoolState(int i) {
        float f2 = i / this.targetBufferSize;
        if (f2 > this.highPoolLoad) {
            return 0;
        }
        return f2 < this.lowPoolLoad ? 2 : 1;
    }

    private void updateControlState() {
        int iMax = this.bufferPoolState;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (int i = 0; i < this.loaders.size(); i++) {
            LoaderState loaderState = this.loaderStates.get(this.loaders.get(i));
            z3 |= loaderState.loading;
            z2 |= loaderState.failed;
            z |= loaderState.nextLoadPositionUs != -1;
            iMax = Math.max(iMax, loaderState.bufferState);
        }
        this.fillingBuffers = (this.loaders.isEmpty() || z2 || (!z3 && !z) || (iMax != 2 && (iMax != 1 || !this.fillingBuffers))) ? false : true;
        if (this.fillingBuffers && !this.streamingPrioritySet) {
            NetworkLock.instance.add(0);
            this.streamingPrioritySet = true;
            notifyLoadingChanged(true);
        } else if (!this.fillingBuffers && this.streamingPrioritySet && !z3) {
            NetworkLock.instance.remove(0);
            this.streamingPrioritySet = false;
            notifyLoadingChanged(false);
        }
        this.maxLoadStartPositionUs = -1L;
        if (this.fillingBuffers) {
            for (int i2 = 0; i2 < this.loaders.size(); i2++) {
                long j = this.loaderStates.get(this.loaders.get(i2)).nextLoadPositionUs;
                if (j != -1 && (this.maxLoadStartPositionUs == -1 || j < this.maxLoadStartPositionUs)) {
                    this.maxLoadStartPositionUs = j;
                }
            }
        }
    }

    private void notifyLoadingChanged(final boolean z) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.DefaultLoadControl.1
                @Override // java.lang.Runnable
                public void run() {
                    DefaultLoadControl.this.eventListener.onLoadingChanged(z);
                }
            });
        }
    }

    class LoaderState {
        public final int bufferSizeContribution;
        public int bufferState = 0;
        public boolean loading = false;
        public boolean failed = false;
        public long nextLoadPositionUs = -1;

        public LoaderState(int i) {
            this.bufferSizeContribution = i;
        }
    }
}
