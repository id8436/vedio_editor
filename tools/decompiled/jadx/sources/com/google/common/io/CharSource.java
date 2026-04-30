package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class CharSource implements InputSupplier<Reader> {
    public abstract Reader openStream() throws IOException;

    protected CharSource() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.common.io.InputSupplier
    @Deprecated
    public final Reader getInput() throws IOException {
        return openStream();
    }

    public BufferedReader openBufferedStream() throws IOException {
        Reader readerOpenStream = openStream();
        return readerOpenStream instanceof BufferedReader ? (BufferedReader) readerOpenStream : new BufferedReader(readerOpenStream);
    }

    public long copyTo(Appendable appendable) throws Throwable {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(appendable);
        Closer closerCreate = Closer.create();
        try {
            try {
                return CharStreams.copy((Reader) closerCreate.register(openStream()), appendable);
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    public long copyTo(CharSink charSink) throws Throwable {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(charSink);
        Closer closerCreate = Closer.create();
        try {
            try {
                return CharStreams.copy((Reader) closerCreate.register(openStream()), (Writer) closerCreate.register(charSink.openStream()));
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    public String read() throws Throwable {
        Closer closerCreate = Closer.create();
        try {
            try {
                return CharStreams.toString((Reader) closerCreate.register(openStream()));
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    @Nullable
    public String readFirstLine() throws Throwable {
        Closer closerCreate = Closer.create();
        try {
            try {
                return ((BufferedReader) closerCreate.register(openBufferedStream())).readLine();
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    public ImmutableList<String> readLines() throws Throwable {
        Closer closerCreate = Closer.create();
        try {
            try {
                BufferedReader bufferedReader = (BufferedReader) closerCreate.register(openBufferedStream());
                ArrayList arrayListNewArrayList = Lists.newArrayList();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        arrayListNewArrayList.add(line);
                    } else {
                        return ImmutableList.copyOf((Collection) arrayListNewArrayList);
                    }
                }
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    @Beta
    public <T> T readLines(LineProcessor<T> lineProcessor) throws Throwable {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(lineProcessor);
        Closer closerCreate = Closer.create();
        try {
            try {
                return (T) CharStreams.readLines((Reader) closerCreate.register(openStream()), lineProcessor);
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    public boolean isEmpty() throws Throwable {
        Closer closerCreate = Closer.create();
        try {
            try {
                return ((Reader) closerCreate.register(openStream())).read() == -1;
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    public static CharSource concat(Iterable<? extends CharSource> iterable) {
        return new ConcatenatedCharSource(iterable);
    }

    public static CharSource concat(Iterator<? extends CharSource> it) {
        return concat(ImmutableList.copyOf(it));
    }

    public static CharSource concat(CharSource... charSourceArr) {
        return concat(ImmutableList.copyOf(charSourceArr));
    }

    public static CharSource wrap(CharSequence charSequence) {
        return new CharSequenceCharSource(charSequence);
    }

    public static CharSource empty() {
        return EmptyCharSource.INSTANCE;
    }

    /* JADX INFO: loaded from: classes3.dex */
    class CharSequenceCharSource extends CharSource {
        private static final Splitter LINE_SPLITTER = Splitter.on(Pattern.compile("\r\n|\n|\r"));
        private final CharSequence seq;

        @Override // com.google.common.io.CharSource, com.google.common.io.InputSupplier
        public /* bridge */ /* synthetic */ Reader getInput() throws IOException {
            return super.getInput();
        }

        protected CharSequenceCharSource(CharSequence charSequence) {
            this.seq = (CharSequence) Preconditions.checkNotNull(charSequence);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() {
            return new CharSequenceReader(this.seq);
        }

        @Override // com.google.common.io.CharSource
        public String read() {
            return this.seq.toString();
        }

        @Override // com.google.common.io.CharSource
        public boolean isEmpty() {
            return this.seq.length() == 0;
        }

        private Iterable<String> lines() {
            return new Iterable<String>() { // from class: com.google.common.io.CharSource.CharSequenceCharSource.1
                @Override // java.lang.Iterable
                public Iterator<String> iterator() {
                    return new AbstractIterator<String>() { // from class: com.google.common.io.CharSource.CharSequenceCharSource.1.1
                        Iterator<String> lines;

                        {
                            this.lines = CharSequenceCharSource.LINE_SPLITTER.split(CharSequenceCharSource.this.seq).iterator();
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.google.common.collect.AbstractIterator
                        public String computeNext() {
                            if (this.lines.hasNext()) {
                                String next = this.lines.next();
                                if (this.lines.hasNext() || next.length() != 0) {
                                    return next;
                                }
                            }
                            return endOfData();
                        }
                    };
                }
            };
        }

        @Override // com.google.common.io.CharSource
        public String readFirstLine() {
            Iterator<String> it = lines().iterator();
            if (it.hasNext()) {
                return it.next();
            }
            return null;
        }

        @Override // com.google.common.io.CharSource
        public ImmutableList<String> readLines() {
            return ImmutableList.copyOf(lines());
        }

        @Override // com.google.common.io.CharSource
        public <T> T readLines(LineProcessor<T> lineProcessor) throws IOException {
            Iterator<String> it = lines().iterator();
            while (it.hasNext() && lineProcessor.processLine(it.next())) {
            }
            return lineProcessor.getResult();
        }

        public String toString() {
            return "CharSource.wrap(" + Ascii.truncate(this.seq, 30, "...") + ")";
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class EmptyCharSource extends CharSequenceCharSource {
        private static final EmptyCharSource INSTANCE = new EmptyCharSource();

        private EmptyCharSource() {
            super("");
        }

        @Override // com.google.common.io.CharSource.CharSequenceCharSource
        public String toString() {
            return "CharSource.empty()";
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class ConcatenatedCharSource extends CharSource {
        private final Iterable<? extends CharSource> sources;

        @Override // com.google.common.io.CharSource, com.google.common.io.InputSupplier
        public /* bridge */ /* synthetic */ Reader getInput() throws IOException {
            return super.getInput();
        }

        ConcatenatedCharSource(Iterable<? extends CharSource> iterable) {
            this.sources = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() throws IOException {
            return new MultiReader(this.sources.iterator());
        }

        @Override // com.google.common.io.CharSource
        public boolean isEmpty() throws IOException {
            Iterator<? extends CharSource> it = this.sources.iterator();
            while (it.hasNext()) {
                if (!it.next().isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return "CharSource.concat(" + this.sources + ")";
        }
    }
}
