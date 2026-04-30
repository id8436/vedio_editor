package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FailureDetailsLogInfo {
    protected final String technicalErrorMessage;
    protected final String userFriendlyMessage;

    public FailureDetailsLogInfo(String str, String str2) {
        this.userFriendlyMessage = str;
        this.technicalErrorMessage = str2;
    }

    public FailureDetailsLogInfo() {
        this(null, null);
    }

    public String getUserFriendlyMessage() {
        return this.userFriendlyMessage;
    }

    public String getTechnicalErrorMessage() {
        return this.technicalErrorMessage;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected String userFriendlyMessage = null;
        protected String technicalErrorMessage = null;

        protected Builder() {
        }

        public Builder withUserFriendlyMessage(String str) {
            this.userFriendlyMessage = str;
            return this;
        }

        public Builder withTechnicalErrorMessage(String str) {
            this.technicalErrorMessage = str;
            return this;
        }

        public FailureDetailsLogInfo build() {
            return new FailureDetailsLogInfo(this.userFriendlyMessage, this.technicalErrorMessage);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.userFriendlyMessage, this.technicalErrorMessage});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FailureDetailsLogInfo failureDetailsLogInfo = (FailureDetailsLogInfo) obj;
            if (this.userFriendlyMessage == failureDetailsLogInfo.userFriendlyMessage || (this.userFriendlyMessage != null && this.userFriendlyMessage.equals(failureDetailsLogInfo.userFriendlyMessage))) {
                if (this.technicalErrorMessage == failureDetailsLogInfo.technicalErrorMessage) {
                    return true;
                }
                if (this.technicalErrorMessage != null && this.technicalErrorMessage.equals(failureDetailsLogInfo.technicalErrorMessage)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FailureDetailsLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FailureDetailsLogInfo failureDetailsLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (failureDetailsLogInfo.userFriendlyMessage != null) {
                gVar.a("user_friendly_message");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(failureDetailsLogInfo.userFriendlyMessage, gVar);
            }
            if (failureDetailsLogInfo.technicalErrorMessage != null) {
                gVar.a("technical_error_message");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(failureDetailsLogInfo.technicalErrorMessage, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FailureDetailsLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String str3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("user_friendly_message".equals(strD)) {
                        String str5 = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str = str5;
                    } else if ("technical_error_message".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str4;
                    } else {
                        skipValue(kVar);
                        str = str3;
                        str2 = str4;
                    }
                    str4 = str2;
                    str3 = str;
                }
                FailureDetailsLogInfo failureDetailsLogInfo = new FailureDetailsLogInfo(str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return failureDetailsLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
