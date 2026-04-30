package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class CharSink implements OutputSupplier<Writer> {
    public abstract Writer openStream() throws IOException;

    protected CharSink() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.common.io.OutputSupplier
    @Deprecated
    public final Writer getOutput() throws IOException {
        return openStream();
    }

    public Writer openBufferedStream() throws IOException {
        Writer writerOpenStream = openStream();
        return writerOpenStream instanceof BufferedWriter ? (BufferedWriter) writerOpenStream : new BufferedWriter(writerOpenStream);
    }

    public void write(CharSequence charSequence) throws Throwable {
        RuntimeException runtimeExceptionRethrow;
        Preconditions.checkNotNull(charSequence);
        Closer closerCreate = Closer.create();
        try {
            try {
                Writer writer = (Writer) closerCreate.register(openStream());
                writer.append(charSequence);
                writer.flush();
            } finally {
            }
        } finally {
            closerCreate.close();
        }
    }

    public void writeLines(Iterable<? extends CharSequence> iterable) throws Throwable {
        writeLines(iterable, System.getProperty("line.separator"));
    }

    public void writeLines(Iterable<? extends CharSequence> iterable, String str) throws Throwable {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(str);
        Closer closerCreate = Closer.create();
        try {
            try {
                Writer writer = (Writer) closerCreate.register(openBufferedStream());
                Iterator<? extends CharSequence> it = iterable.iterator();
                while (it.hasNext()) {
                    writer.append(it.next()).append((CharSequence) str);
                }
                writer.flush();
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    public long writeFrom(Readable readable) throws Throwable {
        Preconditions.checkNotNull(readable);
        Closer closerCreate = Closer.create();
        try {
            try {
                Writer writer = (Writer) closerCreate.register(openStream());
                long jCopy = CharStreams.copy(readable, writer);
                writer.flush();
                return jCopy;
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }
}
