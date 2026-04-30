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
public final class LaunchEmptyResult {
    public static final LaunchEmptyResult COMPLETE = new LaunchEmptyResult().withTag(Tag.COMPLETE);
    private Tag _tag;
    private String asyncJobIdValue;

    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE
    }

    private LaunchEmptyResult() {
    }

    private LaunchEmptyResult withTag(Tag tag) {
        LaunchEmptyResult launchEmptyResult = new LaunchEmptyResult();
        launchEmptyResult._tag = tag;
        return launchEmptyResult;
    }

    private LaunchEmptyResult withTagAndAsyncJobId(Tag tag, String str) {
        LaunchEmptyResult launchEmptyResult = new LaunchEmptyResult();
        launchEmptyResult._tag = tag;
        launchEmptyResult.asyncJobIdValue = str;
        return launchEmptyResult;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAsyncJobId() {
        return this._tag == Tag.ASYNC_JOB_ID;
    }

    public static LaunchEmptyResult asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new LaunchEmptyResult().withTagAndAsyncJobId(Tag.ASYNC_JOB_ID, str);
    }

    public String getAsyncJobIdValue() {
        if (this._tag != Tag.ASYNC_JOB_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this._tag.name());
        }
        return this.asyncJobIdValue;
    }

    public boolean isComplete() {
        return this._tag == Tag.COMPLETE;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.asyncJobIdValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LaunchEmptyResult)) {
            return false;
        }
        LaunchEmptyResult launchEmptyResult = (LaunchEmptyResult) obj;
        if (this._tag != launchEmptyResult._tag) {
            return false;
        }
        switch (this._tag) {
            case ASYNC_JOB_ID:
                return this.asyncJobIdValue == launchEmptyResult.asyncJobIdValue || this.asyncJobIdValue.equals(launchEmptyResult.asyncJobIdValue);
            case COMPLETE:
                return true;
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

    public class Serializer extends UnionSerializer<LaunchEmptyResult> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LaunchEmptyResult launchEmptyResult, g gVar) throws IOException {
            switch (launchEmptyResult.tag()) {
                case ASYNC_JOB_ID:
                    gVar.e();
                    writeTag("async_job_id", gVar);
                    gVar.a("async_job_id");
                    StoneSerializers.string().serialize(launchEmptyResult.asyncJobIdValue, gVar);
                    gVar.f();
                    return;
                case COMPLETE:
                    gVar.b("complete");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + launchEmptyResult.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public LaunchEmptyResult deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            LaunchEmptyResult launchEmptyResultAsyncJobId;
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
                launchEmptyResultAsyncJobId = LaunchEmptyResult.asyncJobId(StoneSerializers.string().deserialize(kVar));
            } else if ("complete".equals(tag)) {
                launchEmptyResultAsyncJobId = LaunchEmptyResult.COMPLETE;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return launchEmptyResultAsyncJobId;
        }
    }
}
