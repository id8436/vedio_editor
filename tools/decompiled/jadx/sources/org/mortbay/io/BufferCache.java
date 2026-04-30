package org.mortbay.io;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.View;
import org.mortbay.util.StringMap;

/* JADX INFO: loaded from: classes3.dex */
public class BufferCache {
    private HashMap _bufferMap = new HashMap();
    private StringMap _stringMap = new StringMap(true);
    private ArrayList _index = new ArrayList();

    public CachedBuffer add(String str, int i) {
        CachedBuffer cachedBuffer = new CachedBuffer(str, i);
        this._bufferMap.put(cachedBuffer, cachedBuffer);
        this._stringMap.put(str, (Object) cachedBuffer);
        while (i - this._index.size() > 0) {
            this._index.add(null);
        }
        this._index.add(i, cachedBuffer);
        return cachedBuffer;
    }

    public CachedBuffer get(int i) {
        if (i < 0 || i >= this._index.size()) {
            return null;
        }
        return (CachedBuffer) this._index.get(i);
    }

    public CachedBuffer get(Buffer buffer) {
        return (CachedBuffer) this._bufferMap.get(buffer);
    }

    public CachedBuffer get(String str) {
        return (CachedBuffer) this._stringMap.get(str);
    }

    public Buffer lookup(Buffer buffer) {
        CachedBuffer cachedBuffer = get(buffer);
        if (cachedBuffer != null) {
            return cachedBuffer;
        }
        if (!(buffer instanceof Buffer.CaseInsensitve)) {
            return new View.CaseInsensitive(buffer);
        }
        return buffer;
    }

    public CachedBuffer getBest(byte[] bArr, int i, int i2) {
        Map.Entry bestEntry = this._stringMap.getBestEntry(bArr, i, i2);
        if (bestEntry != null) {
            return (CachedBuffer) bestEntry.getValue();
        }
        return null;
    }

    public Buffer lookup(String str) {
        CachedBuffer cachedBuffer = get(str);
        if (cachedBuffer == null) {
            return new CachedBuffer(str, -1);
        }
        return cachedBuffer;
    }

    public String toString(Buffer buffer) {
        return lookup(buffer).toString();
    }

    public int getOrdinal(Buffer buffer) {
        if (buffer instanceof CachedBuffer) {
            return ((CachedBuffer) buffer).getOrdinal();
        }
        Buffer bufferLookup = lookup(buffer);
        if (bufferLookup != null && (bufferLookup instanceof CachedBuffer)) {
            return ((CachedBuffer) bufferLookup).getOrdinal();
        }
        return -1;
    }

    public class CachedBuffer extends ByteArrayBuffer.CaseInsensitive {
        private HashMap _associateMap;
        private int _ordinal;

        public CachedBuffer(String str, int i) {
            super(str);
            this._associateMap = null;
            this._ordinal = i;
        }

        public int getOrdinal() {
            return this._ordinal;
        }

        public CachedBuffer getAssociate(Object obj) {
            if (this._associateMap == null) {
                return null;
            }
            return (CachedBuffer) this._associateMap.get(obj);
        }

        public void setAssociate(Object obj, CachedBuffer cachedBuffer) {
            if (this._associateMap == null) {
                this._associateMap = new HashMap();
            }
            this._associateMap.put(obj, cachedBuffer);
        }
    }

    public String toString() {
        return new StringBuffer().append("CACHE[bufferMap=").append(this._bufferMap).append(",stringMap=").append(this._stringMap).append(",index=").append(this._index).append("]").toString();
    }
}
