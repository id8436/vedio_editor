package com.google.android.exoplayer.chunk.parser.webm;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.upstream.NonBlockingInputStream;

/* JADX INFO: loaded from: classes2.dex */
interface EbmlEventHandler {
    int getElementType(int i);

    boolean onBinaryElement(int i, long j, int i2, int i3, NonBlockingInputStream nonBlockingInputStream) throws ParserException;

    void onFloatElement(int i, double d2) throws ParserException;

    void onIntegerElement(int i, long j) throws ParserException;

    void onMasterElementEnd(int i) throws ParserException;

    void onMasterElementStart(int i, long j, int i2, long j2) throws ParserException;

    void onStringElement(int i, String str) throws ParserException;
}
