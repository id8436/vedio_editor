package com.google.common.io;

import android.support.v7.widget.ActivityChooserView;
import com.google.common.annotations.Beta;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.hash.Funnels;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hasher;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class ByteSource implements InputSupplier<InputStream> {
    private static final int BUF_SIZE = 4096;
    private static final byte[] countBuffer = new byte[4096];

    public abstract InputStream openStream() throws IOException;

    protected ByteSource() {
    }

    public CharSource asCharSource(Charset charset) {
        return new AsCharSource(charset);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.common.io.InputSupplier
    @Deprecated
    public final InputStream getInput() throws IOException {
        return openStream();
    }

    public InputStream openBufferedStream() throws IOException {
        InputStream inputStreamOpenStream = openStream();
        return inputStreamOpenStream instanceof BufferedInputStream ? (BufferedInputStream) inputStreamOpenStream : new BufferedInputStream(inputStreamOpenStream);
    }

    public ByteSource slice(long j, long j2) {
        return new SlicedByteSource(j, j2);
    }

    public boolean isEmpty() throws Throwable {
        Closer closerCreate = Closer.create();
        try {
            try {
                return ((InputStream) closerCreate.register(openStream())).read() == -1;
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    public long size() throws Throwable {
        RuntimeException runtimeExceptionRethrow;
        long jCountByReading;
        Closer closerCreate = Closer.create();
        try {
            jCountByReading = countBySkipping((InputStream) closerCreate.register(openStream()));
        } catch (IOException e2) {
            closerCreate.close();
            try {
                try {
                    jCountByReading = countByReading((InputStream) Closer.create().register(openStream()));
                } finally {
                }
            } finally {
            }
        } finally {
        }
        return jCountByReading;
    }

    private long countBySkipping(InputStream inputStream) throws IOException {
        long j = 0;
        while (true) {
            long jSkip = inputStream.skip(Math.min(inputStream.available(), ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED));
            if (jSkip <= 0) {
                if (inputStream.read() == -1) {
                    return j;
                }
                if (j == 0 && inputStream.available() == 0) {
                    throw new IOException();
                }
                j++;
            } else {
                j += jSkip;
            }
        }
    }

    private long countByReading(InputStream inputStream) throws IOException {
        long j = 0;
        while (true) {
            long j2 = inputStream.read(countBuffer);
            if (j2 != -1) {
                j += j2;
            } else {
                return j;
            }
        }
    }

    public long copyTo(OutputStream outputStream) throws Throwable {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(outputStream);
        Closer closerCreate = Closer.create();
        try {
            try {
                return ByteStreams.copy((InputStream) closerCreate.register(openStream()), outputStream);
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    public long copyTo(ByteSink byteSink) throws Throwable {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(byteSink);
        Closer closerCreate = Closer.create();
        try {
            try {
                return ByteStreams.copy((InputStream) closerCreate.register(openStream()), (OutputStream) closerCreate.register(byteSink.openStream()));
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    public byte[] read() throws Throwable {
        Closer closerCreate = Closer.create();
        try {
            try {
                return ByteStreams.toByteArray((InputStream) closerCreate.register(openStream()));
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    @Beta
    public <T> T read(ByteProcessor<T> byteProcessor) throws Throwable {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(byteProcessor);
        Closer closerCreate = Closer.create();
        try {
            try {
                return (T) ByteStreams.readBytes((InputStream) closerCreate.register(openStream()), byteProcessor);
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    public HashCode hash(HashFunction hashFunction) throws Throwable {
        Hasher hasherNewHasher = hashFunction.newHasher();
        copyTo(Funnels.asOutputStream(hasherNewHasher));
        return hasherNewHasher.hash();
    }

    public boolean contentEquals(ByteSource byteSource) throws Throwable {
        int i;
        Preconditions.checkNotNull(byteSource);
        byte[] bArr = new byte[4096];
        byte[] bArr2 = new byte[4096];
        Closer closerCreate = Closer.create();
        try {
            try {
                InputStream inputStream = (InputStream) closerCreate.register(openStream());
                InputStream inputStream2 = (InputStream) closerCreate.register(byteSource.openStream());
                do {
                    i = ByteStreams.read(inputStream, bArr, 0, 4096);
                    if (i != ByteStreams.read(inputStream2, bArr2, 0, 4096) || !Arrays.equals(bArr, bArr2)) {
                        return false;
                    }
                } while (i == 4096);
                return true;
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    public static ByteSource concat(Iterable<? extends ByteSource> iterable) {
        return new ConcatenatedByteSource(iterable);
    }

    public static ByteSource concat(Iterator<? extends ByteSource> it) {
        return concat(ImmutableList.copyOf(it));
    }

    public static ByteSource concat(ByteSource... byteSourceArr) {
        return concat(ImmutableList.copyOf(byteSourceArr));
    }

    public static ByteSource wrap(byte[] bArr) {
        return new ByteArrayByteSource(bArr);
    }

    public static ByteSource empty() {
        return EmptyByteSource.INSTANCE;
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class AsCharSource extends CharSource {
        private final Charset charset;

        private AsCharSource(Charset charset) {
            this.charset = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() throws IOException {
            return new InputStreamReader(ByteSource.this.openStream(), this.charset);
        }

        public String toString() {
            return ByteSource.this.toString() + ".asCharSource(" + this.charset + ")";
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class SlicedByteSource extends ByteSource {
        private final long length;
        private final long offset;

        @Override // com.google.common.io.ByteSource, com.google.common.io.InputSupplier
        public /* bridge */ /* synthetic */ InputStream getInput() throws IOException {
            return super.getInput();
        }

        private SlicedByteSource(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", Long.valueOf(j));
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", Long.valueOf(j2));
            this.offset = j;
            this.length = j2;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return sliceStream(ByteSource.this.openStream());
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() throws IOException {
            return sliceStream(ByteSource.this.openBufferedStream());
        }

        private InputStream sliceStream(InputStream inputStream) throws Throwable {
            if (this.offset > 0) {
                try {
                    ByteStreams.skipFully(inputStream, this.offset);
                } finally {
                }
            }
            return ByteStreams.limit(inputStream, this.length);
        }

        @Override // com.google.common.io.ByteSource
        public ByteSource slice(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", Long.valueOf(j));
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", Long.valueOf(j2));
            return ByteSource.this.slice(this.offset + j, Math.min(j2, this.length - j));
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() throws IOException {
            return this.length == 0 || super.isEmpty();
        }

        public String toString() {
            return ByteSource.this.toString() + ".slice(" + this.offset + ", " + this.length + ")";
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class ByteArrayByteSource extends ByteSource {
        protected final byte[] bytes;

        @Override // com.google.common.io.ByteSource, com.google.common.io.InputSupplier
        public /* bridge */ /* synthetic */ InputStream getInput() throws IOException {
            return super.getInput();
        }

        protected ByteArrayByteSource(byte[] bArr) {
            this.bytes = (byte[]) Preconditions.checkNotNull(bArr);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return new ByteArrayInputStream(this.bytes);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() throws IOException {
            return openStream();
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() {
            return this.bytes.length == 0;
        }

        @Override // com.google.common.io.ByteSource
        public long size() {
            return this.bytes.length;
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() {
            return (byte[]) this.bytes.clone();
        }

        @Override // com.google.common.io.ByteSource
        public long copyTo(OutputStream outputStream) throws IOException {
            outputStream.write(this.bytes);
            return this.bytes.length;
        }

        @Override // com.google.common.io.ByteSource
        public <T> T read(ByteProcessor<T> byteProcessor) throws IOException {
            byteProcessor.processBytes(this.bytes, 0, this.bytes.length);
            return byteProcessor.getResult();
        }

        @Override // com.google.common.io.ByteSource
        public HashCode hash(HashFunction hashFunction) throws IOException {
            return hashFunction.hashBytes(this.bytes);
        }

        public String toString() {
            return "ByteSource.wrap(" + Ascii.truncate(BaseEncoding.base16().encode(this.bytes), 30, "...") + ")";
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class EmptyByteSource extends ByteArrayByteSource {
        private static final EmptyByteSource INSTANCE = new EmptyByteSource();

        private EmptyByteSource() {
            super(new byte[0]);
        }

        @Override // com.google.common.io.ByteSource
        public CharSource asCharSource(Charset charset) {
            Preconditions.checkNotNull(charset);
            return CharSource.empty();
        }

        @Override // com.google.common.io.ByteSource.ByteArrayByteSource, com.google.common.io.ByteSource
        public byte[] read() {
            return this.bytes;
        }

        @Override // com.google.common.io.ByteSource.ByteArrayByteSource
        public String toString() {
            return "ByteSource.empty()";
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class ConcatenatedByteSource extends ByteSource {
        private final Iterable<? extends ByteSource> sources;

        @Override // com.google.common.io.ByteSource, com.google.common.io.InputSupplier
        public /* bridge */ /* synthetic */ InputStream getInput() throws IOException {
            return super.getInput();
        }

        ConcatenatedByteSource(Iterable<? extends ByteSource> iterable) {
            this.sources = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return new MultiInputStream(this.sources.iterator());
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() throws IOException {
            Iterator<? extends ByteSource> it = this.sources.iterator();
            while (it.hasNext()) {
                if (!it.next().isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.ByteSource
        public long size() throws IOException {
            long size = 0;
            Iterator<? extends ByteSource> it = this.sources.iterator();
            while (true) {
                long j = size;
                if (it.hasNext()) {
                    size = it.next().size() + j;
                } else {
                    return j;
                }
            }
        }

        public String toString() {
            return "ByteSource.concat(" + this.sources + ")";
        }
    }
}
