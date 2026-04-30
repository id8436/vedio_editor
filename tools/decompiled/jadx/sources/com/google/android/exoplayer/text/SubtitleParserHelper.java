package com.google.android.exoplayer.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.util.Assertions;
import java.io.ByteArrayInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class SubtitleParserHelper implements Handler.Callback {
    private IOException error;
    private final Handler handler;
    private final SubtitleParser parser;
    private boolean parsing;
    private Subtitle result;
    private SampleHolder sampleHolder;

    public SubtitleParserHelper(Looper looper, SubtitleParser subtitleParser) {
        this.handler = new Handler(looper, this);
        this.parser = subtitleParser;
        flush();
    }

    public synchronized void flush() {
        this.sampleHolder = new SampleHolder(1);
        this.parsing = false;
        this.result = null;
        this.error = null;
    }

    public synchronized boolean isParsing() {
        return this.parsing;
    }

    public synchronized SampleHolder getSampleHolder() {
        return this.sampleHolder;
    }

    public synchronized void startParseOperation() {
        synchronized (this) {
            Assertions.checkState(this.parsing ? false : true);
            this.parsing = true;
            this.result = null;
            this.error = null;
            this.handler.obtainMessage(0, this.sampleHolder).sendToTarget();
        }
    }

    public synchronized Subtitle getAndClearResult() throws IOException {
        Subtitle subtitle;
        try {
            if (this.error != null) {
                throw this.error;
            }
            subtitle = this.result;
            this.error = null;
            this.result = null;
        } catch (Throwable th) {
            this.error = null;
            this.result = null;
            throw th;
        }
        return subtitle;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Subtitle subtitle;
        IOException iOException = null;
        SampleHolder sampleHolder = (SampleHolder) message.obj;
        try {
            subtitle = this.parser.parse(new ByteArrayInputStream(sampleHolder.data.array(), 0, sampleHolder.size), null, this.sampleHolder.timeUs);
        } catch (IOException e2) {
            subtitle = null;
            iOException = e2;
        }
        synchronized (this) {
            if (this.sampleHolder == sampleHolder) {
                this.result = subtitle;
                this.error = iOException;
                this.parsing = false;
            }
        }
        return true;
    }
}
