package org.mortbay.util;

import com.google.common.base.Ascii;

/* JADX INFO: loaded from: classes3.dex */
public class Utf8StringBuffer {
    int _bits;
    StringBuffer _buffer;
    boolean _errors;
    int _more;

    public Utf8StringBuffer() {
        this._buffer = new StringBuffer();
    }

    public Utf8StringBuffer(int i) {
        this._buffer = new StringBuffer(i);
    }

    public void append(byte[] bArr, int i, int i2) {
        int i3 = i + i2;
        while (i < i3) {
            append(bArr[i]);
            i++;
        }
    }

    public void append(byte b2) {
        if (b2 >= 0) {
            if (this._more > 0) {
                this._buffer.append('?');
                this._more = 0;
                this._bits = 0;
                return;
            }
            this._buffer.append((char) (b2 & Ascii.DEL));
            return;
        }
        if (this._more == 0) {
            if ((b2 & 192) != 192) {
                this._buffer.append('?');
                this._more = 0;
                this._bits = 0;
                return;
            }
            if ((b2 & 224) == 192) {
                this._more = 1;
                this._bits = b2 & 31;
                return;
            }
            if ((b2 & 240) == 224) {
                this._more = 2;
                this._bits = b2 & Ascii.SI;
                return;
            }
            if ((b2 & 248) == 240) {
                this._more = 3;
                this._bits = b2 & 7;
                return;
            } else if ((b2 & 252) == 248) {
                this._more = 4;
                this._bits = b2 & 3;
                return;
            } else {
                if ((b2 & 254) == 252) {
                    this._more = 5;
                    this._bits = b2 & 1;
                    return;
                }
                return;
            }
        }
        if ((b2 & 192) == 192) {
            this._buffer.append('?');
            this._more = 0;
            this._bits = 0;
            this._errors = true;
            return;
        }
        this._bits = (this._bits << 6) | (b2 & 63);
        int i = this._more - 1;
        this._more = i;
        if (i == 0) {
            this._buffer.append((char) this._bits);
        }
    }

    public int length() {
        return this._buffer.length();
    }

    public void reset() {
        this._buffer.setLength(0);
        this._more = 0;
        this._bits = 0;
        this._errors = false;
    }

    public StringBuffer getStringBuffer() {
        return this._buffer;
    }

    public String toString() {
        return this._buffer.toString();
    }

    public boolean isError() {
        return this._errors || this._more > 0;
    }
}
