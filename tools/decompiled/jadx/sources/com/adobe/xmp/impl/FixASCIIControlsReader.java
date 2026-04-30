package com.adobe.xmp.impl;

import java.io.IOException;
import java.io.PushbackReader;
import java.io.Reader;

/* JADX INFO: loaded from: classes2.dex */
public class FixASCIIControlsReader extends PushbackReader {
    private static final int BUFFER_SIZE = 8;
    private static final int STATE_AMP = 1;
    private static final int STATE_DIG1 = 4;
    private static final int STATE_ERROR = 5;
    private static final int STATE_HASH = 2;
    private static final int STATE_HEX = 3;
    private static final int STATE_START = 0;
    private int control;
    private int digits;
    private int state;

    public FixASCIIControlsReader(Reader reader) {
        super(reader, 8);
        this.state = 0;
        this.control = 0;
        this.digits = 0;
    }

    @Override // java.io.PushbackReader, java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        char[] cArr2 = new char[8];
        boolean z = true;
        int i3 = 0;
        int i4 = 0;
        while (z && i3 < i2) {
            z = super.read(cArr2, i4, 1) == 1;
            if (z) {
                char cProcessChar = processChar(cArr2[i4]);
                if (this.state == 0) {
                    if (Utils.isControlChar(cProcessChar)) {
                        cProcessChar = ' ';
                    }
                    cArr[i] = cProcessChar;
                    i3++;
                    i++;
                    i4 = 0;
                } else if (this.state == 5) {
                    unread(cArr2, 0, i4 + 1);
                    i4 = 0;
                } else {
                    i4++;
                }
            } else if (i4 > 0) {
                unread(cArr2, 0, i4);
                this.state = 5;
                z = true;
                i4 = 0;
            }
        }
        if (i3 > 0 || z) {
            return i3;
        }
        return -1;
    }

    private char processChar(char c2) {
        switch (this.state) {
            case 0:
                if (c2 == '&') {
                    this.state = 1;
                }
                break;
            case 1:
                if (c2 == '#') {
                    this.state = 2;
                } else {
                    this.state = 5;
                }
                break;
            case 2:
                if (c2 == 'x') {
                    this.control = 0;
                    this.digits = 0;
                    this.state = 3;
                } else if ('0' <= c2 && c2 <= '9') {
                    this.control = Character.digit(c2, 10);
                    this.digits = 1;
                    this.state = 4;
                } else {
                    this.state = 5;
                }
                break;
            case 3:
                if (('0' <= c2 && c2 <= '9') || (('a' <= c2 && c2 <= 'f') || ('A' <= c2 && c2 <= 'F'))) {
                    this.control = (this.control * 16) + Character.digit(c2, 16);
                    this.digits++;
                    if (this.digits <= 4) {
                        this.state = 3;
                    } else {
                        this.state = 5;
                    }
                } else if (c2 == ';' && Utils.isControlChar((char) this.control)) {
                    this.state = 0;
                } else {
                    this.state = 5;
                }
                break;
            case 4:
                if ('0' <= c2 && c2 <= '9') {
                    this.control = (this.control * 10) + Character.digit(c2, 10);
                    this.digits++;
                    if (this.digits <= 5) {
                        this.state = 4;
                    } else {
                        this.state = 5;
                    }
                } else if (c2 == ';' && Utils.isControlChar((char) this.control)) {
                    this.state = 0;
                } else {
                    this.state = 5;
                }
                break;
            case 5:
                this.state = 0;
                break;
        }
        return c2;
    }
}
