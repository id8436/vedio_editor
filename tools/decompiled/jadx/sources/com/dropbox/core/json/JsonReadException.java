package com.dropbox.core.json;

import com.d.a.a.i;
import com.d.a.a.m;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonReadException extends Exception {
    public static final long serialVersionUID = 0;
    public final String error;
    public final i location;
    private PathPart path;

    public JsonReadException(String str, i iVar) {
        this.error = str;
        this.location = iVar;
        this.path = null;
    }

    public JsonReadException(String str, i iVar, Throwable th) {
        super(th);
        this.error = str;
        this.location = iVar;
        this.path = null;
    }

    public JsonReadException addFieldContext(String str) {
        this.path = new PathPart('\"' + str + '\"', this.path);
        return this;
    }

    public JsonReadException addArrayContext(int i) {
        this.path = new PathPart(Integer.toString(i), this.path);
        return this;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb = new StringBuilder();
        toStringLocation(sb, this.location);
        sb.append(": ");
        if (this.path != null) {
            PathPart pathPart = this.path;
            sb.append(pathPart.description);
            while (pathPart.next != null) {
                pathPart = pathPart.next;
                sb.append(".");
                sb.append(pathPart.description);
            }
            sb.append(": ");
        }
        sb.append(this.error);
        return sb.toString();
    }

    public static void toStringLocation(StringBuilder sb, i iVar) {
        Object objA = iVar.a();
        if (objA instanceof File) {
            sb.append(((File) objA).getPath());
            sb.append(": ");
        }
        sb.append(iVar.b());
        sb.append(".");
        sb.append(iVar.c());
    }

    public final class PathPart {
        public final String description;
        public final PathPart next;

        public PathPart(String str, PathPart pathPart) {
            this.description = str;
            this.next = pathPart;
        }
    }

    public static JsonReadException fromJackson(m mVar) {
        String message = mVar.getMessage();
        int iLastIndexOf = message.lastIndexOf(" at [Source");
        if (iLastIndexOf >= 0) {
            message = message.substring(0, iLastIndexOf);
        }
        return new JsonReadException(message, mVar.a());
    }
}
