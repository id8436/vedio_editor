package com.google.gdata.util;

import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.IEntry;
import com.google.gdata.util.ErrorDomain;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes3.dex */
public class VersionConflictException extends ServiceException {
    private IEntry currentEntry;

    public VersionConflictException() {
        super("Version conflict");
        this.currentEntry = null;
        setHttpErrorCodeOverride(409);
    }

    public VersionConflictException(IEntry iEntry) {
        super("Version conflict");
        this.currentEntry = iEntry;
        setHttpErrorCodeOverride(409);
    }

    public VersionConflictException(IEntry iEntry, Throwable th) {
        super("Version conflict", th);
        this.currentEntry = iEntry;
        setHttpErrorCodeOverride(409);
    }

    public VersionConflictException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
    }

    public VersionConflictException(ErrorDomain.ErrorCode errorCode) {
        super(errorCode);
        setHttpErrorCodeOverride(409);
    }

    public VersionConflictException(ErrorDomain.ErrorCode errorCode, Throwable th) {
        super(errorCode, th);
        setHttpErrorCodeOverride(409);
    }

    public IEntry getCurrentEntry() {
        return this.currentEntry;
    }

    public void setCurrentEntry(IEntry iEntry) {
        this.currentEntry = iEntry;
    }

    public void generate(ExtensionProfile extensionProfile, XmlWriter xmlWriter) throws IOException {
        GenerateUtil.generateAtom(xmlWriter, this.currentEntry, extensionProfile);
    }
}
