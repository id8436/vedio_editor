package org.mortbay.io;

import java.text.DateFormatSymbols;
import java.util.Locale;
import org.mortbay.util.DateCache;

/* JADX INFO: loaded from: classes3.dex */
public class BufferDateCache extends DateCache {
    Buffer _buffer;
    String _last;

    public BufferDateCache() {
    }

    public BufferDateCache(String str, DateFormatSymbols dateFormatSymbols) {
        super(str, dateFormatSymbols);
    }

    public BufferDateCache(String str, Locale locale) {
        super(str, locale);
    }

    public BufferDateCache(String str) {
        super(str);
    }

    public synchronized Buffer formatBuffer(long j) {
        Buffer buffer;
        String str = super.format(j);
        if (str == this._last) {
            buffer = this._buffer;
        } else {
            this._last = str;
            this._buffer = new ByteArrayBuffer(str);
            buffer = this._buffer;
        }
        return buffer;
    }
}
