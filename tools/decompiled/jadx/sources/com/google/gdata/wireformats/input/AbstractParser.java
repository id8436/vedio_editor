package com.google.gdata.wireformats.input;

import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.ContentCreationException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractParser<T> implements InputParser<T> {
    protected final AltFormat altFormat;
    protected final Class<? extends T> resultType;

    protected AbstractParser(AltFormat altFormat, Class<? extends T> cls) {
        Preconditions.checkNotNull(altFormat, "altFormat");
        Preconditions.checkNotNull(cls, "resultType");
        this.altFormat = altFormat;
        this.resultType = cls;
    }

    @Override // com.google.gdata.wireformats.input.InputParser
    public AltFormat getAltFormat() {
        return this.altFormat;
    }

    @Override // com.google.gdata.wireformats.input.InputParser
    public Class<? extends T> getResultType() {
        return this.resultType;
    }

    protected T createResult() throws ContentCreationException {
        return (T) createResult(this.resultType);
    }

    protected <R extends T> R createResult(Class<R> cls) throws ContentCreationException {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Can't create parse target", e2);
        } catch (InstantiationException e3) {
            throw new IllegalStateException("Can't create parse target", e3);
        }
    }
}
