package org.mortbay.jetty;

import com.behance.sdk.util.BehanceSDKConstants;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.io.Buffer;
import org.mortbay.io.Buffers;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractBuffers extends AbstractLifeCycle implements Buffers {
    private static final int __HEADER = 0;
    private static final int __OTHER = 3;
    private static final int __REQUEST = 1;
    private static final int __RESPONSE = 2;
    private int _headerBufferSize = 4096;
    private int _requestBufferSize = 8192;
    private int _responseBufferSize = 24576;
    private final int[] _pool = {2, 1, 1, 2};
    private final ThreadLocal _buffers = new ThreadLocal(this) { // from class: org.mortbay.jetty.AbstractBuffers.1
        private final AbstractBuffers this$0;

        {
            this.this$0 = this;
        }

        @Override // java.lang.ThreadLocal
        protected Object initialValue() {
            return new ThreadBuffers(this.this$0._pool[0], this.this$0._pool[1], this.this$0._pool[2], this.this$0._pool[3]);
        }
    };

    protected abstract Buffer newBuffer(int i);

    @Override // org.mortbay.io.Buffers
    public Buffer getBuffer(int i) {
        char c2;
        if (i == this._headerBufferSize) {
            c2 = 0;
        } else {
            c2 = i == this._responseBufferSize ? (char) 2 : i == this._requestBufferSize ? (char) 1 : (char) 3;
        }
        Buffer[] bufferArr = ((ThreadBuffers) this._buffers.get())._buffers[c2];
        for (int i2 = 0; i2 < bufferArr.length; i2++) {
            Buffer buffer = bufferArr[i2];
            if (buffer != null && buffer.capacity() == i) {
                bufferArr[i2] = null;
                return buffer;
            }
        }
        return newBuffer(i);
    }

    @Override // org.mortbay.io.Buffers
    public void returnBuffer(Buffer buffer) {
        char c2;
        buffer.clear();
        if (!buffer.isVolatile() && !buffer.isImmutable()) {
            int iCapacity = buffer.capacity();
            if (iCapacity == this._headerBufferSize) {
                c2 = 0;
            } else {
                c2 = iCapacity == this._responseBufferSize ? (char) 2 : iCapacity == this._requestBufferSize ? (char) 1 : (char) 3;
            }
            Buffer[] bufferArr = ((ThreadBuffers) this._buffers.get())._buffers[c2];
            for (int i = 0; i < bufferArr.length; i++) {
                if (bufferArr[i] == null) {
                    bufferArr[i] = buffer;
                    return;
                }
            }
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        super.doStart();
        if (this._headerBufferSize == this._requestBufferSize && this._headerBufferSize == this._responseBufferSize) {
            int[] iArr = this._pool;
            iArr[0] = iArr[0] + this._pool[1] + this._pool[2];
            this._pool[1] = 0;
            this._pool[2] = 0;
            return;
        }
        if (this._headerBufferSize == this._requestBufferSize) {
            int[] iArr2 = this._pool;
            iArr2[0] = iArr2[0] + this._pool[1];
            this._pool[1] = 0;
        } else if (this._headerBufferSize == this._responseBufferSize) {
            int[] iArr3 = this._pool;
            iArr3[0] = iArr3[0] + this._pool[2];
            this._pool[2] = 0;
        } else if (this._requestBufferSize == this._responseBufferSize) {
            int[] iArr4 = this._pool;
            iArr4[2] = iArr4[2] + this._pool[1];
            this._pool[1] = 0;
        }
    }

    public int getHeaderBufferSize() {
        return this._headerBufferSize;
    }

    public void setHeaderBufferSize(int i) {
        if (isStarted()) {
            throw new IllegalStateException();
        }
        this._headerBufferSize = i;
    }

    public int getRequestBufferSize() {
        return this._requestBufferSize;
    }

    public void setRequestBufferSize(int i) {
        if (isStarted()) {
            throw new IllegalStateException();
        }
        this._requestBufferSize = i;
    }

    public int getResponseBufferSize() {
        return this._responseBufferSize;
    }

    public void setResponseBufferSize(int i) {
        if (isStarted()) {
            throw new IllegalStateException();
        }
        this._responseBufferSize = i;
    }

    public class ThreadBuffers {
        final Buffer[][] _buffers = new Buffer[4][];

        ThreadBuffers(int i, int i2, int i3, int i4) {
            this._buffers[0] = new Buffer[i];
            this._buffers[1] = new Buffer[i2];
            this._buffers[2] = new Buffer[i3];
            this._buffers[3] = new Buffer[i4];
        }
    }

    public String toString() {
        return new StringBuffer().append("{{").append(this._headerBufferSize).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this._requestBufferSize).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this._responseBufferSize).append("}}").toString();
    }
}
