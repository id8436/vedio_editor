package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Iterables;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class CharStreams {
    private static final int BUF_SIZE = 2048;

    private CharStreams() {
    }

    @Deprecated
    public static InputSupplier<StringReader> newReaderSupplier(String str) {
        return asInputSupplier(CharSource.wrap(str));
    }

    @Deprecated
    public static InputSupplier<InputStreamReader> newReaderSupplier(InputSupplier<? extends InputStream> inputSupplier, Charset charset) {
        return asInputSupplier(ByteStreams.asByteSource(inputSupplier).asCharSource(charset));
    }

    @Deprecated
    public static OutputSupplier<OutputStreamWriter> newWriterSupplier(OutputSupplier<? extends OutputStream> outputSupplier, Charset charset) {
        return asOutputSupplier(ByteStreams.asByteSink(outputSupplier).asCharSink(charset));
    }

    @Deprecated
    public static <W extends Appendable & Closeable> void write(CharSequence charSequence, OutputSupplier<W> outputSupplier) throws Throwable {
        asCharSink(outputSupplier).write(charSequence);
    }

    @Deprecated
    public static <R extends Readable & Closeable, W extends Appendable & Closeable> long copy(InputSupplier<R> inputSupplier, OutputSupplier<W> outputSupplier) throws IOException {
        return asCharSource(inputSupplier).copyTo(asCharSink(outputSupplier));
    }

    @Deprecated
    public static <R extends Readable & Closeable> long copy(InputSupplier<R> inputSupplier, Appendable appendable) throws IOException {
        return asCharSource(inputSupplier).copyTo(appendable);
    }

    public static long copy(Readable readable, Appendable appendable) throws IOException {
        Preconditions.checkNotNull(readable);
        Preconditions.checkNotNull(appendable);
        CharBuffer charBufferAllocate = CharBuffer.allocate(2048);
        long jRemaining = 0;
        while (readable.read(charBufferAllocate) != -1) {
            charBufferAllocate.flip();
            appendable.append(charBufferAllocate);
            jRemaining += (long) charBufferAllocate.remaining();
            charBufferAllocate.clear();
        }
        return jRemaining;
    }

    public static String toString(Readable readable) throws IOException {
        return toStringBuilder(readable).toString();
    }

    @Deprecated
    public static <R extends Readable & Closeable> String toString(InputSupplier<R> inputSupplier) throws IOException {
        return asCharSource(inputSupplier).read();
    }

    private static StringBuilder toStringBuilder(Readable readable) throws IOException {
        StringBuilder sb = new StringBuilder();
        copy(readable, sb);
        return sb;
    }

    @Deprecated
    public static <R extends Readable & Closeable> String readFirstLine(InputSupplier<R> inputSupplier) throws IOException {
        return asCharSource(inputSupplier).readFirstLine();
    }

    @Deprecated
    public static <R extends Readable & Closeable> List<String> readLines(InputSupplier<R> inputSupplier) throws Throwable {
        Closer closerCreate = Closer.create();
        try {
            try {
                return readLines((Readable) closerCreate.register(inputSupplier.getInput()));
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    public static List<String> readLines(Readable readable) throws IOException {
        ArrayList arrayList = new ArrayList();
        LineReader lineReader = new LineReader(readable);
        while (true) {
            String line = lineReader.readLine();
            if (line != null) {
                arrayList.add(line);
            } else {
                return arrayList;
            }
        }
    }

    public static <T> T readLines(Readable readable, LineProcessor<T> lineProcessor) throws IOException {
        String line;
        Preconditions.checkNotNull(readable);
        Preconditions.checkNotNull(lineProcessor);
        LineReader lineReader = new LineReader(readable);
        do {
            line = lineReader.readLine();
            if (line == null) {
                break;
            }
        } while (lineProcessor.processLine(line));
        return lineProcessor.getResult();
    }

    @Deprecated
    public static <R extends Readable & Closeable, T> T readLines(InputSupplier<R> inputSupplier, LineProcessor<T> lineProcessor) throws Throwable {
        Preconditions.checkNotNull(inputSupplier);
        Preconditions.checkNotNull(lineProcessor);
        Closer closerCreate = Closer.create();
        try {
            try {
                return (T) readLines((Readable) closerCreate.register(inputSupplier.getInput()), lineProcessor);
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    @Deprecated
    public static InputSupplier<Reader> join(Iterable<? extends InputSupplier<? extends Reader>> iterable) {
        Preconditions.checkNotNull(iterable);
        return asInputSupplier(CharSource.concat((Iterable<? extends CharSource>) Iterables.transform(iterable, new Function<InputSupplier<? extends Reader>, CharSource>() { // from class: com.google.common.io.CharStreams.1
            @Override // com.google.common.base.Function
            public CharSource apply(InputSupplier<? extends Reader> inputSupplier) {
                return CharStreams.asCharSource(inputSupplier);
            }
        })));
    }

    @Deprecated
    public static InputSupplier<Reader> join(InputSupplier<? extends Reader>... inputSupplierArr) {
        return join(Arrays.asList(inputSupplierArr));
    }

    public static void skipFully(Reader reader, long j) throws IOException {
        Preconditions.checkNotNull(reader);
        while (j > 0) {
            long jSkip = reader.skip(j);
            if (jSkip == 0) {
                if (reader.read() == -1) {
                    throw new EOFException();
                }
                jSkip = 1;
            }
            j -= jSkip;
        }
    }

    public static Writer nullWriter() {
        return NullWriter.INSTANCE;
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class NullWriter extends Writer {
        private static final NullWriter INSTANCE = new NullWriter();

        private NullWriter() {
        }

        @Override // java.io.Writer
        public void write(int i) {
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
            Preconditions.checkNotNull(cArr);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i + i2, cArr.length);
        }

        @Override // java.io.Writer
        public void write(String str) {
            Preconditions.checkNotNull(str);
        }

        @Override // java.io.Writer
        public void write(String str, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i + i2, str.length());
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return this;
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, charSequence.length());
            return this;
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(char c2) {
            return this;
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        public String toString() {
            return "CharStreams.nullWriter()";
        }
    }

    public static Writer asWriter(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new AppendableWriter(appendable);
    }

    static Reader asReader(final Readable readable) {
        Preconditions.checkNotNull(readable);
        return readable instanceof Reader ? (Reader) readable : new Reader() { // from class: com.google.common.io.CharStreams.2
            @Override // java.io.Reader
            public int read(char[] cArr, int i, int i2) throws IOException {
                return read(CharBuffer.wrap(cArr, i, i2));
            }

            @Override // java.io.Reader, java.lang.Readable
            public int read(CharBuffer charBuffer) throws IOException {
                return readable.read(charBuffer);
            }

            @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                if (readable instanceof Closeable) {
                    ((Closeable) readable).close();
                }
            }
        };
    }

    @Deprecated
    public static CharSource asCharSource(final InputSupplier<? extends Readable> inputSupplier) {
        Preconditions.checkNotNull(inputSupplier);
        return new CharSource() { // from class: com.google.common.io.CharStreams.3
            @Override // com.google.common.io.CharSource
            public Reader openStream() throws IOException {
                return CharStreams.asReader((Readable) inputSupplier.getInput());
            }

            public String toString() {
                return "CharStreams.asCharSource(" + inputSupplier + ")";
            }
        };
    }

    @Deprecated
    public static CharSink asCharSink(final OutputSupplier<? extends Appendable> outputSupplier) {
        Preconditions.checkNotNull(outputSupplier);
        return new CharSink() { // from class: com.google.common.io.CharStreams.4
            @Override // com.google.common.io.CharSink
            public Writer openStream() throws IOException {
                return CharStreams.asWriter((Appendable) outputSupplier.getOutput());
            }

            public String toString() {
                return "CharStreams.asCharSink(" + outputSupplier + ")";
            }
        };
    }

    static <R extends Reader> InputSupplier<R> asInputSupplier(CharSource charSource) {
        return (InputSupplier) Preconditions.checkNotNull(charSource);
    }

    static <W extends Writer> OutputSupplier<W> asOutputSupplier(CharSink charSink) {
        return (OutputSupplier) Preconditions.checkNotNull(charSink);
    }
}
