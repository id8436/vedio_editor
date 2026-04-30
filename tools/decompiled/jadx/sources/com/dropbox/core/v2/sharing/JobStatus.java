package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.JobError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class JobStatus {
    private Tag _tag;
    private JobError failedValue;
    public static final JobStatus IN_PROGRESS = new JobStatus().withTag(Tag.IN_PROGRESS);
    public static final JobStatus COMPLETE = new JobStatus().withTag(Tag.COMPLETE);

    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    private JobStatus() {
    }

    private JobStatus withTag(Tag tag) {
        JobStatus jobStatus = new JobStatus();
        jobStatus._tag = tag;
        return jobStatus;
    }

    private JobStatus withTagAndFailed(Tag tag, JobError jobError) {
        JobStatus jobStatus = new JobStatus();
        jobStatus._tag = tag;
        jobStatus.failedValue = jobError;
        return jobStatus;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isInProgress() {
        return this._tag == Tag.IN_PROGRESS;
    }

    public boolean isComplete() {
        return this._tag == Tag.COMPLETE;
    }

    public boolean isFailed() {
        return this._tag == Tag.FAILED;
    }

    public static JobStatus failed(JobError jobError) {
        if (jobError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new JobStatus().withTagAndFailed(Tag.FAILED, jobError);
    }

    public JobError getFailedValue() {
        if (this._tag != Tag.FAILED) {
            throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this._tag.name());
        }
        return this.failedValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.failedValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof JobStatus)) {
            return false;
        }
        JobStatus jobStatus = (JobStatus) obj;
        if (this._tag != jobStatus._tag) {
            return false;
        }
        switch (this._tag) {
            case IN_PROGRESS:
                return true;
            case COMPLETE:
                return true;
            case FAILED:
                return this.failedValue == jobStatus.failedValue || this.failedValue.equals(jobStatus.failedValue);
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

    class Serializer extends UnionSerializer<JobStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(JobStatus jobStatus, g gVar) throws IOException {
            switch (jobStatus.tag()) {
                case IN_PROGRESS:
                    gVar.b("in_progress");
                    return;
                case COMPLETE:
                    gVar.b("complete");
                    return;
                case FAILED:
                    gVar.e();
                    writeTag("failed", gVar);
                    gVar.a("failed");
                    JobError.Serializer.INSTANCE.serialize(jobStatus.failedValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + jobStatus.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public JobStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            JobStatus jobStatusFailed;
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
            if ("in_progress".equals(tag)) {
                jobStatusFailed = JobStatus.IN_PROGRESS;
            } else if ("complete".equals(tag)) {
                jobStatusFailed = JobStatus.COMPLETE;
            } else if ("failed".equals(tag)) {
                expectField("failed", kVar);
                jobStatusFailed = JobStatus.failed(JobError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return jobStatusFailed;
        }
    }
}
