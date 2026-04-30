package com.crashlytics.android.core;

import android.os.Process;
import c.a.a.a.a.b.m;
import c.a.a.a.a.b.z;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
class CLSUUID {
    private static String _clsId;
    private static final AtomicLong _sequenceNumber = new AtomicLong(0);

    public CLSUUID(z zVar) {
        byte[] bArr = new byte[10];
        populateTime(bArr);
        populateSequenceNumber(bArr);
        populatePID(bArr);
        String strA = m.a(zVar.b());
        String strA2 = m.a(bArr);
        _clsId = String.format(Locale.US, "%s-%s-%s-%s", strA2.substring(0, 12), strA2.substring(12, 16), strA2.subSequence(16, 20), strA.substring(0, 12)).toUpperCase(Locale.US);
    }

    private void populateTime(byte[] bArr) {
        long time = new Date().getTime();
        byte[] bArrConvertLongToFourByteBuffer = convertLongToFourByteBuffer(time / 1000);
        bArr[0] = bArrConvertLongToFourByteBuffer[0];
        bArr[1] = bArrConvertLongToFourByteBuffer[1];
        bArr[2] = bArrConvertLongToFourByteBuffer[2];
        bArr[3] = bArrConvertLongToFourByteBuffer[3];
        byte[] bArrConvertLongToTwoByteBuffer = convertLongToTwoByteBuffer(time % 1000);
        bArr[4] = bArrConvertLongToTwoByteBuffer[0];
        bArr[5] = bArrConvertLongToTwoByteBuffer[1];
    }

    private void populateSequenceNumber(byte[] bArr) {
        byte[] bArrConvertLongToTwoByteBuffer = convertLongToTwoByteBuffer(_sequenceNumber.incrementAndGet());
        bArr[6] = bArrConvertLongToTwoByteBuffer[0];
        bArr[7] = bArrConvertLongToTwoByteBuffer[1];
    }

    private void populatePID(byte[] bArr) {
        byte[] bArrConvertLongToTwoByteBuffer = convertLongToTwoByteBuffer(Integer.valueOf(Process.myPid()).shortValue());
        bArr[8] = bArrConvertLongToTwoByteBuffer[0];
        bArr[9] = bArrConvertLongToTwoByteBuffer[1];
    }

    private static byte[] convertLongToFourByteBuffer(long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt((int) j);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }

    private static byte[] convertLongToTwoByteBuffer(long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.putShort((short) j);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }

    public String toString() {
        return _clsId;
    }
}
