package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Iterables;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class ByteStreams {
    private static final int BUF_SIZE = 4096;
    private static final OutputStream NULL_OUTPUT_STREAM = new OutputStream() { // from class: com.google.common.io.ByteStreams.1
        @Override // java.io.OutputStream
        public void write(int i) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            Preconditions.checkNotNull(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            Preconditions.checkNotNull(bArr);
        }

        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }
    };

    private ByteStreams() {
    }

    @Deprecated
    public static InputSupplier<ByteArrayInputStream> newInputStreamSupplier(byte[] bArr) {
        return asInputSupplier(ByteSource.wrap(bArr));
    }

    @Deprecated
    public static InputSupplier<ByteArrayInputStream> newInputStreamSupplier(byte[] bArr, int i, int i2) {
        return asInputSupplier(ByteSource.wrap(bArr).slice(i, i2));
    }

    @Deprecated
    public static void write(byte[] bArr, OutputSupplier<? extends OutputStream> outputSupplier) throws Throwable {
        asByteSink(outputSupplier).write(bArr);
    }

    @Deprecated
    public static long copy(InputSupplier<? extends InputStream> inputSupplier, OutputSupplier<? extends OutputStream> outputSupplier) throws IOException {
        return asByteSource(inputSupplier).copyTo(asByteSink(outputSupplier));
    }

    @Deprecated
    public static long copy(InputSupplier<? extends InputStream> inputSupplier, OutputStream outputStream) throws IOException {
        return asByteSource(inputSupplier).copyTo(outputStream);
    }

    @Deprecated
    public static long copy(InputStream inputStream, OutputSupplier<? extends OutputStream> outputSupplier) throws IOException {
        return asByteSink(outputSupplier).writeFrom(inputStream);
    }

    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(outputStream);
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1) {
                outputStream.write(bArr, 0, i);
                j += (long) i;
            } else {
                return j;
            }
        }
    }

    public static long copy(ReadableByteChannel readableByteChannel, WritableByteChannel writableByteChannel) throws IOException {
        Preconditions.checkNotNull(readableByteChannel);
        Preconditions.checkNotNull(writableByteChannel);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4096);
        long jWrite = 0;
        while (readableByteChannel.read(byteBufferAllocate) != -1) {
            byteBufferAllocate.flip();
            while (byteBufferAllocate.hasRemaining()) {
                jWrite += (long) writableByteChannel.write(byteBufferAllocate);
            }
            byteBufferAllocate.clear();
        }
        return jWrite;
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    static byte[] toByteArray(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            int i3 = i - i2;
            int i4 = inputStream.read(bArr, i3, i2);
            if (i4 == -1) {
                return copyOf(bArr, i3);
            }
            i2 -= i4;
        }
        int i5 = inputStream.read();
        if (i5 != -1) {
            FastByteArrayOutputStream fastByteArrayOutputStream = new FastByteArrayOutputStream();
            fastByteArrayOutputStream.write(i5);
            copy(inputStream, fastByteArrayOutputStream);
            byte[] bArr2 = new byte[bArr.length + fastByteArrayOutputStream.size()];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            fastByteArrayOutputStream.writeTo(bArr2, bArr.length);
            return bArr2;
        }
        return bArr;
    }

    private static byte[] copyOf(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class FastByteArrayOutputStream extends ByteArrayOutputStream {
        private FastByteArrayOutputStream() {
        }

        void writeTo(byte[] bArr, int i) {
            System.arraycopy(this.buf, 0, bArr, i, this.count);
        }
    }

    @Deprecated
    public static byte[] toByteArray(InputSupplier<? extends InputStream> inputSupplier) throws IOException {
        return asByteSource(inputSupplier).read();
    }

    public static ByteArrayDataInput newDataInput(byte[] bArr) {
        return newDataInput(new ByteArrayInputStream(bArr));
    }

    public static ByteArrayDataInput newDataInput(byte[] bArr, int i) {
        Preconditions.checkPositionIndex(i, bArr.length);
        return newDataInput(new ByteArrayInputStream(bArr, i, bArr.length - i));
    }

    public static ByteArrayDataInput newDataInput(ByteArrayInputStream byteArrayInputStream) {
        return new ByteArrayDataInputStream((ByteArrayInputStream) Preconditions.checkNotNull(byteArrayInputStream));
    }

    /* JADX INFO: loaded from: classes3.dex */
    class ByteArrayDataInputStream implements ByteArrayDataInput {
        final DataInput input;

        ByteArrayDataInputStream(ByteArrayInputStream byteArrayInputStream) {
            this.input = new DataInputStream(byteArrayInputStream);
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public void readFully(byte[] bArr) {
            try {
                this.input.readFully(bArr);
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public void readFully(byte[] bArr, int i, int i2) {
            try {
                this.input.readFully(bArr, i, i2);
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int skipBytes(int i) {
            try {
                return this.input.skipBytes(i);
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public boolean readBoolean() {
            try {
                return this.input.readBoolean();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public byte readByte() {
            try {
                return this.input.readByte();
            } catch (EOFException e2) {
                throw new IllegalStateException(e2);
            } catch (IOException e3) {
                throw new AssertionError(e3);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int readUnsignedByte() {
            try {
                return this.input.readUnsignedByte();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public short readShort() {
            try {
                return this.input.readShort();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int readUnsignedShort() {
            try {
                return this.input.readUnsignedShort();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public char readChar() {
            try {
                return this.input.readChar();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int readInt() {
            try {
                return this.input.readInt();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public long readLong() {
            try {
                return this.input.readLong();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public float readFloat() {
            try {
                return this.input.readFloat();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public double readDouble() {
            try {
                return this.input.readDouble();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public String readLine() {
            try {
                return this.input.readLine();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public String readUTF() {
            try {
                return this.input.readUTF();
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }
    }

    public static ByteArrayDataOutput newDataOutput() {
        return newDataOutput(new ByteArrayOutputStream());
    }

    public static ByteArrayDataOutput newDataOutput(int i) {
        Preconditions.checkArgument(i >= 0, "Invalid size: %s", Integer.valueOf(i));
        return newDataOutput(new ByteArrayOutputStream(i));
    }

    public static ByteArrayDataOutput newDataOutput(ByteArrayOutputStream byteArrayOutputStream) {
        return new ByteArrayDataOutputStream((ByteArrayOutputStream) Preconditions.checkNotNull(byteArrayOutputStream));
    }

    /* JADX INFO: loaded from: classes3.dex */
    class ByteArrayDataOutputStream implements ByteArrayDataOutput {
        final ByteArrayOutputStream byteArrayOutputSteam;
        final DataOutput output;

        ByteArrayDataOutputStream(ByteArrayOutputStream byteArrayOutputStream) {
            this.byteArrayOutputSteam = byteArrayOutputStream;
            this.output = new DataOutputStream(byteArrayOutputStream);
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void write(int i) {
            try {
                this.output.write(i);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void write(byte[] bArr) {
            try {
                this.output.write(bArr);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void write(byte[] bArr, int i, int i2) {
            try {
                this.output.write(bArr, i, i2);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeBoolean(boolean z) {
            try {
                this.output.writeBoolean(z);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeByte(int i) {
            try {
                this.output.writeByte(i);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeBytes(String str) {
            try {
                this.output.writeBytes(str);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeChar(int i) {
            try {
                this.output.writeChar(i);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeChars(String str) {
            try {
                this.output.writeChars(str);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeDouble(double d2) {
            try {
                this.output.writeDouble(d2);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeFloat(float f2) {
            try {
                this.output.writeFloat(f2);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeInt(int i) {
            try {
                this.output.writeInt(i);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeLong(long j) {
            try {
                this.output.writeLong(j);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeShort(int i) {
            try {
                this.output.writeShort(i);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeUTF(String str) {
            try {
                this.output.writeUTF(str);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput
        public byte[] toByteArray() {
            return this.byteArrayOutputSteam.toByteArray();
        }
    }

    public static OutputStream nullOutputStream() {
        return NULL_OUTPUT_STREAM;
    }

    public static InputStream limit(InputStream inputStream, long j) {
        return new LimitedInputStream(inputStream, j);
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class LimitedInputStream extends FilterInputStream {
        private long left;
        private long mark;

        LimitedInputStream(InputStream inputStream, long j) {
            super(inputStream);
            this.mark = -1L;
            Preconditions.checkNotNull(inputStream);
            Preconditions.checkArgument(j >= 0, "limit must be non-negative");
            this.left = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            return (int) Math.min(this.in.available(), this.left);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void mark(int i) {
            this.in.mark(i);
            this.mark = this.left;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.left == 0) {
                return -1;
            }
            int i = this.in.read();
            if (i != -1) {
                this.left--;
            }
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (this.left == 0) {
                return -1;
            }
            int i3 = this.in.read(bArr, i, (int) Math.min(i2, this.left));
            if (i3 != -1) {
                this.left -= (long) i3;
            }
            return i3;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void reset() throws IOException {
            if (!this.in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.mark == -1) {
                throw new IOException("Mark not set");
            }
            this.in.reset();
            this.left = this.mark;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            long jSkip = this.in.skip(Math.min(j, this.left));
            this.left -= jSkip;
            return jSkip;
        }
    }

    @Deprecated
    public static long length(InputSupplier<? extends InputStream> inputSupplier) throws IOException {
        return asByteSource(inputSupplier).size();
    }

    @Deprecated
    public static boolean equal(InputSupplier<? extends InputStream> inputSupplier, InputSupplier<? extends InputStream> inputSupplier2) throws IOException {
        return asByteSource(inputSupplier).contentEquals(asByteSource(inputSupplier2));
    }

    public static void readFully(InputStream inputStream, byte[] bArr) throws IOException {
        readFully(inputStream, bArr, 0, bArr.length);
    }

    public static void readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = read(inputStream, bArr, i, i2);
        if (i3 != i2) {
            throw new EOFException("reached end of stream after reading " + i3 + " bytes; " + i2 + " bytes expected");
        }
    }

    public static void skipFully(InputStream inputStream, long j) throws IOException {
        long j2 = j;
        while (j2 > 0) {
            long jSkip = inputStream.skip(j2);
            if (jSkip == 0) {
                if (inputStream.read() == -1) {
                    throw new EOFException("reached end of stream after skipping " + (j - j2) + " bytes; " + j + " bytes expected");
                }
                j2--;
            } else {
                j2 -= jSkip;
            }
        }
    }

    @Deprecated
    public static <T> T readBytes(InputSupplier<? extends InputStream> inputSupplier, ByteProcessor<T> byteProcessor) throws Throwable {
        Preconditions.checkNotNull(inputSupplier);
        Preconditions.checkNotNull(byteProcessor);
        Closer closerCreate = Closer.create();
        try {
            try {
                return (T) readBytes((InputStream) closerCreate.register(inputSupplier.getInput()), byteProcessor);
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    public static <T> T readBytes(InputStream inputStream, ByteProcessor<T> byteProcessor) throws IOException {
        int i;
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(byteProcessor);
        byte[] bArr = new byte[4096];
        do {
            i = inputStream.read(bArr);
            if (i == -1) {
                break;
            }
        } while (byteProcessor.processBytes(bArr, 0, i));
        return byteProcessor.getResult();
    }

    @Deprecated
    public static HashCode hash(InputSupplier<? extends InputStream> inputSupplier, HashFunction hashFunction) throws IOException {
        return asByteSource(inputSupplier).hash(hashFunction);
    }

    public static int read(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(bArr);
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("len is negative");
        }
        int i3 = 0;
        while (i3 < i2) {
            int i4 = inputStream.read(bArr, i + i3, i2 - i3);
            if (i4 == -1) {
                break;
            }
            i3 += i4;
        }
        return i3;
    }

    @Deprecated
    public static InputSupplier<InputStream> slice(InputSupplier<? extends InputStream> inputSupplier, long j, long j2) {
        return asInputSupplier(asByteSource(inputSupplier).slice(j, j2));
    }

    @Deprecated
    public static InputSupplier<InputStream> join(Iterable<? extends InputSupplier<? extends InputStream>> iterable) {
        Preconditions.checkNotNull(iterable);
        return asInputSupplier(ByteSource.concat((Iterable<? extends ByteSource>) Iterables.transform(iterable, new Function<InputSupplier<? extends InputStream>, ByteSource>() { // from class: com.google.common.io.ByteStreams.2
            @Override // com.google.common.base.Function
            public ByteSource apply(InputSupplier<? extends InputStream> inputSupplier) {
                return ByteStreams.asByteSource(inputSupplier);
            }
        })));
    }

    @Deprecated
    public static InputSupplier<InputStream> join(InputSupplier<? extends InputStream>... inputSupplierArr) {
        return join(Arrays.asList(inputSupplierArr));
    }

    @Deprecated
    public static ByteSource asByteSource(final InputSupplier<? extends InputStream> inputSupplier) {
        Preconditions.checkNotNull(inputSupplier);
        return new ByteSource() { // from class: com.google.common.io.ByteStreams.3
            @Override // com.google.common.io.ByteSource
            public InputStream openStream() throws IOException {
                return (InputStream) inputSupplier.getInput();
            }

            public String toString() {
                return "ByteStreams.asByteSource(" + inputSupplier + ")";
            }
        };
    }

    @Deprecated
    public static ByteSink asByteSink(final OutputSupplier<? extends OutputStream> outputSupplier) {
        Preconditions.checkNotNull(outputSupplier);
        return new ByteSink() { // from class: com.google.common.io.ByteStreams.4
            @Override // com.google.common.io.ByteSink
            public OutputStream openStream() throws IOException {
                return (OutputStream) outputSupplier.getOutput();
            }

            public String toString() {
                return "ByteStreams.asByteSink(" + outputSupplier + ")";
            }
        };
    }

    static <S extends InputStream> InputSupplier<S> asInputSupplier(ByteSource byteSource) {
        return (InputSupplier) Preconditions.checkNotNull(byteSource);
    }

    static <S extends OutputStream> OutputSupplier<S> asOutputSupplier(ByteSink byteSink) {
        return (OutputSupplier) Preconditions.checkNotNull(byteSink);
    }
}
