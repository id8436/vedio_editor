package com.dropbox.core.v2.async;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class LaunchResultBase {
    private Tag _tag;
    private String asyncJobIdValue;

    public enum Tag {
        ASYNC_JOB_ID
    }

    private LaunchResultBase() {
    }

    private LaunchResultBase withTag(Tag tag) {
        LaunchResultBase launchResultBase = new LaunchResultBase();
        launchResultBase._tag = tag;
        return launchResultBase;
    }

    private LaunchResultBase withTagAndAsyncJobId(Tag tag, String str) {
        LaunchResultBase launchResultBase = new LaunchResultBase();
        launchResultBase._tag = tag;
        launchResultBase.asyncJobIdValue = str;
        return launchResultBase;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAsyncJobId() {
        return this._tag == Tag.ASYNC_JOB_ID;
    }

    public static LaunchResultBase asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new LaunchResultBase().withTagAndAsyncJobId(Tag.ASYNC_JOB_ID, str);
    }

    public String getAsyncJobIdValue() {
        if (this._tag != Tag.ASYNC_JOB_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this._tag.name());
        }
        return this.asyncJobIdValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.asyncJobIdValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LaunchResultBase)) {
            return false;
        }
        LaunchResultBase launchResultBase = (LaunchResultBase) obj;
        if (this._tag != launchResultBase._tag) {
            return false;
        }
        switch (this._tag) {
            case ASYNC_JOB_ID:
                return this.asyncJobIdValue == launchResultBase.asyncJobIdValue || this.asyncJobIdValue.equals(launchResultBase.asyncJobIdValue);
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends UnionSerializer<LaunchResultBase> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LaunchResultBase launchResultBase, g gVar) throws IOException {
            switch (launchResultBase.tag()) {
                case ASYNC_JOB_ID:
                    gVar.e();
                    writeTag("async_job_id", gVar);
                    gVar.a("async_job_id");
                    StoneSerializers.string().serialize(launchResultBase.asyncJobIdValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + launchResultBase.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public LaunchResultBase deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("async_job_id".equals(tag)) {
                expectField("async_job_id", kVar);
                LaunchResultBase launchResultBaseAsyncJobId = LaunchResultBase.asyncJobId(StoneSerializers.string().deserialize(kVar));
                if (!z) {
                    skipFields(kVar);
                    expectEndObject(kVar);
                }
                return launchResultBaseAsyncJobId;
            }
            throw new j(kVar, "Unknown tag: " + tag);
        }
    }
}
