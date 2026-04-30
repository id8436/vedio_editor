package com.dropbox.core.v2;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxUploader;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DbxUploadStyleBuilder<R, E, X extends DbxApiException> {
    public abstract DbxUploader<R, E, X> start() throws DbxException;

    public R uploadAndFinish(InputStream inputStream) throws DbxException, IOException {
        return start().uploadAndFinish(inputStream);
    }

    public R uploadAndFinish(InputStream inputStream, long j) throws DbxException, IOException {
        return start().uploadAndFinish(inputStream, j);
    }
}
