package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.RelinquishFolderMembershipError;
import com.dropbox.core.v2.sharing.RemoveFolderMemberError;
import com.dropbox.core.v2.sharing.UnshareFolderError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class JobError {
    public static final JobError OTHER = new JobError().withTag(Tag.OTHER);
    private Tag _tag;
    private RelinquishFolderMembershipError relinquishFolderMembershipErrorValue;
    private RemoveFolderMemberError removeFolderMemberErrorValue;
    private UnshareFolderError unshareFolderErrorValue;

    public enum Tag {
        UNSHARE_FOLDER_ERROR,
        REMOVE_FOLDER_MEMBER_ERROR,
        RELINQUISH_FOLDER_MEMBERSHIP_ERROR,
        OTHER
    }

    private JobError() {
    }

    private JobError withTag(Tag tag) {
        JobError jobError = new JobError();
        jobError._tag = tag;
        return jobError;
    }

    private JobError withTagAndUnshareFolderError(Tag tag, UnshareFolderError unshareFolderError) {
        JobError jobError = new JobError();
        jobError._tag = tag;
        jobError.unshareFolderErrorValue = unshareFolderError;
        return jobError;
    }

    private JobError withTagAndRemoveFolderMemberError(Tag tag, RemoveFolderMemberError removeFolderMemberError) {
        JobError jobError = new JobError();
        jobError._tag = tag;
        jobError.removeFolderMemberErrorValue = removeFolderMemberError;
        return jobError;
    }

    private JobError withTagAndRelinquishFolderMembershipError(Tag tag, RelinquishFolderMembershipError relinquishFolderMembershipError) {
        JobError jobError = new JobError();
        jobError._tag = tag;
        jobError.relinquishFolderMembershipErrorValue = relinquishFolderMembershipError;
        return jobError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUnshareFolderError() {
        return this._tag == Tag.UNSHARE_FOLDER_ERROR;
    }

    public static JobError unshareFolderError(UnshareFolderError unshareFolderError) {
        if (unshareFolderError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new JobError().withTagAndUnshareFolderError(Tag.UNSHARE_FOLDER_ERROR, unshareFolderError);
    }

    public UnshareFolderError getUnshareFolderErrorValue() {
        if (this._tag != Tag.UNSHARE_FOLDER_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.UNSHARE_FOLDER_ERROR, but was Tag." + this._tag.name());
        }
        return this.unshareFolderErrorValue;
    }

    public boolean isRemoveFolderMemberError() {
        return this._tag == Tag.REMOVE_FOLDER_MEMBER_ERROR;
    }

    public static JobError removeFolderMemberError(RemoveFolderMemberError removeFolderMemberError) {
        if (removeFolderMemberError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new JobError().withTagAndRemoveFolderMemberError(Tag.REMOVE_FOLDER_MEMBER_ERROR, removeFolderMemberError);
    }

    public RemoveFolderMemberError getRemoveFolderMemberErrorValue() {
        if (this._tag != Tag.REMOVE_FOLDER_MEMBER_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.REMOVE_FOLDER_MEMBER_ERROR, but was Tag." + this._tag.name());
        }
        return this.removeFolderMemberErrorValue;
    }

    public boolean isRelinquishFolderMembershipError() {
        return this._tag == Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR;
    }

    public static JobError relinquishFolderMembershipError(RelinquishFolderMembershipError relinquishFolderMembershipError) {
        if (relinquishFolderMembershipError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new JobError().withTagAndRelinquishFolderMembershipError(Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR, relinquishFolderMembershipError);
    }

    public RelinquishFolderMembershipError getRelinquishFolderMembershipErrorValue() {
        if (this._tag != Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR, but was Tag." + this._tag.name());
        }
        return this.relinquishFolderMembershipErrorValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.unshareFolderErrorValue, this.removeFolderMemberErrorValue, this.relinquishFolderMembershipErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof JobError)) {
            return false;
        }
        JobError jobError = (JobError) obj;
        if (this._tag != jobError._tag) {
            return false;
        }
        switch (this._tag) {
            case UNSHARE_FOLDER_ERROR:
                return this.unshareFolderErrorValue == jobError.unshareFolderErrorValue || this.unshareFolderErrorValue.equals(jobError.unshareFolderErrorValue);
            case REMOVE_FOLDER_MEMBER_ERROR:
                return this.removeFolderMemberErrorValue == jobError.removeFolderMemberErrorValue || this.removeFolderMemberErrorValue.equals(jobError.removeFolderMemberErrorValue);
            case RELINQUISH_FOLDER_MEMBERSHIP_ERROR:
                return this.relinquishFolderMembershipErrorValue == jobError.relinquishFolderMembershipErrorValue || this.relinquishFolderMembershipErrorValue.equals(jobError.relinquishFolderMembershipErrorValue);
            case OTHER:
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

    class Serializer extends UnionSerializer<JobError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(JobError jobError, g gVar) throws IOException {
            switch (jobError.tag()) {
                case UNSHARE_FOLDER_ERROR:
                    gVar.e();
                    writeTag("unshare_folder_error", gVar);
                    gVar.a("unshare_folder_error");
                    UnshareFolderError.Serializer.INSTANCE.serialize(jobError.unshareFolderErrorValue, gVar);
                    gVar.f();
                    break;
                case REMOVE_FOLDER_MEMBER_ERROR:
                    gVar.e();
                    writeTag("remove_folder_member_error", gVar);
                    gVar.a("remove_folder_member_error");
                    RemoveFolderMemberError.Serializer.INSTANCE.serialize(jobError.removeFolderMemberErrorValue, gVar);
                    gVar.f();
                    break;
                case RELINQUISH_FOLDER_MEMBERSHIP_ERROR:
                    gVar.e();
                    writeTag("relinquish_folder_membership_error", gVar);
                    gVar.a("relinquish_folder_membership_error");
                    RelinquishFolderMembershipError.Serializer.INSTANCE.serialize(jobError.relinquishFolderMembershipErrorValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public JobError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            JobError jobErrorRelinquishFolderMembershipError;
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
            if ("unshare_folder_error".equals(tag)) {
                expectField("unshare_folder_error", kVar);
                jobErrorRelinquishFolderMembershipError = JobError.unshareFolderError(UnshareFolderError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("remove_folder_member_error".equals(tag)) {
                expectField("remove_folder_member_error", kVar);
                jobErrorRelinquishFolderMembershipError = JobError.removeFolderMemberError(RemoveFolderMemberError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("relinquish_folder_membership_error".equals(tag)) {
                expectField("relinquish_folder_membership_error", kVar);
                jobErrorRelinquishFolderMembershipError = JobError.relinquishFolderMembershipError(RelinquishFolderMembershipError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                jobErrorRelinquishFolderMembershipError = JobError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return jobErrorRelinquishFolderMembershipError;
        }
    }
}
