package com.google.android.exoplayer.chunk.parser.webm;

import com.google.android.exoplayer.upstream.NonBlockingInputStream;
import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteBuffer;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
final class DefaultEbmlReader implements EbmlReader {
    private static final int MAX_INTEGER_ELEMENT_SIZE_BYTES = 8;
    private static final int STATE_BEGIN_READING = 0;
    private static final int STATE_FINISHED_READING = 2;
    private static final int STATE_READ_CONTENTS = 1;
    private static final int VALID_FLOAT32_ELEMENT_SIZE_BYTES = 4;
    private static final int VALID_FLOAT64_ELEMENT_SIZE_BYTES = 8;
    private static final int[] VARINT_LENGTH_MASKS = {128, 64, 32, 16, 8, 4, 2, 1};
    private long bytesRead;
    private int bytesState;
    private long elementContentSize;
    private int elementContentSizeState;
    private int elementId;
    private int elementIdState;
    private long elementOffset;
    private EbmlEventHandler eventHandler;
    private int state;
    private byte[] stringBytes;
    private int varintBytesLength;
    private int varintBytesState;
    private final byte[] tempByteArray = new byte[8];
    private final Stack<MasterElement> masterElementsStack = new Stack<>();

    DefaultEbmlReader() {
    }

    @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlReader
    public void setEventHandler(EbmlEventHandler ebmlEventHandler) {
        this.eventHandler = ebmlEventHandler;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlReader
    public int read(com.google.android.exoplayer.upstream.NonBlockingInputStream r13) throws com.google.android.exoplayer.ParserException {
        /*
            Method dump skipped, instruction units count: 624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.chunk.parser.webm.DefaultEbmlReader.read(com.google.android.exoplayer.upstream.NonBlockingInputStream):int");
    }

    @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlReader
    public long getBytesRead() {
        return this.bytesRead;
    }

    @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlReader
    public void reset() {
        prepareForNextElement();
        this.masterElementsStack.clear();
        this.bytesRead = 0L;
    }

    @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlReader
    public long readVarint(NonBlockingInputStream nonBlockingInputStream) {
        this.varintBytesState = 0;
        if (readVarintBytes(nonBlockingInputStream) != 0) {
            throw new IllegalStateException("Couldn't read varint");
        }
        return getTempByteArrayValue(this.varintBytesLength, true);
    }

    @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlReader
    public void readBytes(NonBlockingInputStream nonBlockingInputStream, ByteBuffer byteBuffer, int i) {
        this.bytesState = 0;
        if (readBytesInternal(nonBlockingInputStream, byteBuffer, i) != 0) {
            throw new IllegalStateException("Couldn't read bytes into buffer");
        }
    }

    @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlReader
    public void readBytes(NonBlockingInputStream nonBlockingInputStream, byte[] bArr, int i) {
        this.bytesState = 0;
        if (readBytesInternal(nonBlockingInputStream, bArr, i) != 0) {
            throw new IllegalStateException("Couldn't read bytes into array");
        }
    }

    @Override // com.google.android.exoplayer.chunk.parser.webm.EbmlReader
    public void skipBytes(NonBlockingInputStream nonBlockingInputStream, int i) {
        this.bytesState = 0;
        if (skipBytesInternal(nonBlockingInputStream, i) != 0) {
            throw new IllegalStateException("Couldn't skip bytes");
        }
    }

    private void prepareForNextElement() {
        this.state = 0;
        this.elementIdState = 0;
        this.elementContentSizeState = 0;
        this.elementOffset = this.bytesRead;
    }

    private int readElementId(NonBlockingInputStream nonBlockingInputStream) {
        if (this.elementIdState == 2) {
            return 0;
        }
        if (this.elementIdState == 0) {
            this.varintBytesState = 0;
            this.elementIdState = 1;
        }
        int varintBytes = readVarintBytes(nonBlockingInputStream);
        if (varintBytes != 0) {
            return varintBytes;
        }
        this.elementId = (int) getTempByteArrayValue(this.varintBytesLength, false);
        this.elementIdState = 2;
        return 0;
    }

    private int readElementContentSize(NonBlockingInputStream nonBlockingInputStream) {
        if (this.elementContentSizeState == 2) {
            return 0;
        }
        if (this.elementContentSizeState == 0) {
            this.varintBytesState = 0;
            this.elementContentSizeState = 1;
        }
        int varintBytes = readVarintBytes(nonBlockingInputStream);
        if (varintBytes != 0) {
            return varintBytes;
        }
        this.elementContentSize = getTempByteArrayValue(this.varintBytesLength, true);
        this.elementContentSizeState = 2;
        return 0;
    }

    private int readVarintBytes(NonBlockingInputStream nonBlockingInputStream) {
        if (this.varintBytesState == 2) {
            return 0;
        }
        if (this.varintBytesState == 0) {
            this.bytesState = 0;
            int bytesInternal = readBytesInternal(nonBlockingInputStream, this.tempByteArray, 1);
            if (bytesInternal != 0) {
                return bytesInternal;
            }
            this.varintBytesState = 1;
            int i = this.tempByteArray[0] & UnsignedBytes.MAX_VALUE;
            this.varintBytesLength = -1;
            int i2 = 0;
            while (true) {
                if (i2 >= VARINT_LENGTH_MASKS.length) {
                    break;
                }
                if ((VARINT_LENGTH_MASKS[i2] & i) == 0) {
                    i2++;
                } else {
                    this.varintBytesLength = i2 + 1;
                    break;
                }
            }
            if (this.varintBytesLength == -1) {
                throw new IllegalStateException("No valid varint length mask found at bytesRead = " + this.bytesRead);
            }
        }
        int bytesInternal2 = readBytesInternal(nonBlockingInputStream, this.tempByteArray, this.varintBytesLength);
        if (bytesInternal2 != 0) {
            return bytesInternal2;
        }
        return 0;
    }

    private int readBytesInternal(NonBlockingInputStream nonBlockingInputStream, ByteBuffer byteBuffer, int i) {
        if (this.bytesState == 0 && i > byteBuffer.capacity()) {
            throw new IllegalArgumentException("Byte buffer not large enough");
        }
        if (this.bytesState >= i) {
            return 0;
        }
        return updateBytesState(nonBlockingInputStream.read(byteBuffer, i - this.bytesState), i);
    }

    private int readBytesInternal(NonBlockingInputStream nonBlockingInputStream, byte[] bArr, int i) {
        if (this.bytesState == 0 && i > bArr.length) {
            throw new IllegalArgumentException("Byte array not large enough");
        }
        if (this.bytesState >= i) {
            return 0;
        }
        return updateBytesState(nonBlockingInputStream.read(bArr, this.bytesState, i - this.bytesState), i);
    }

    private int skipBytesInternal(NonBlockingInputStream nonBlockingInputStream, int i) {
        if (this.bytesState >= i) {
            return 0;
        }
        return updateBytesState(nonBlockingInputStream.skip(i - this.bytesState), i);
    }

    private int updateBytesState(int i, int i2) {
        if (i == -1) {
            return 2;
        }
        this.bytesState += i;
        this.bytesRead += (long) i;
        if (this.bytesState < i2) {
            return 1;
        }
        return 0;
    }

    private long getTempByteArrayValue(int i, boolean z) {
        if (z) {
            byte[] bArr = this.tempByteArray;
            bArr[0] = (byte) (bArr[0] & (VARINT_LENGTH_MASKS[this.varintBytesLength - 1] ^ (-1)));
        }
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (this.tempByteArray[i2] & UnsignedBytes.MAX_VALUE));
        }
        return j;
    }

    final class MasterElement {
        private final long elementEndOffsetBytes;
        private final int elementId;

        private MasterElement(int i, long j) {
            this.elementId = i;
            this.elementEndOffsetBytes = j;
        }
    }
}
