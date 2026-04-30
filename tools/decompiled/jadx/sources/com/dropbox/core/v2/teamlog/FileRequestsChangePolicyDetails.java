package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.FileRequestsPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FileRequestsChangePolicyDetails {
    protected final FileRequestsPolicy newValue;
    protected final FileRequestsPolicy previousValue;

    public FileRequestsChangePolicyDetails(FileRequestsPolicy fileRequestsPolicy, FileRequestsPolicy fileRequestsPolicy2) {
        if (fileRequestsPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = fileRequestsPolicy;
        this.previousValue = fileRequestsPolicy2;
    }

    public FileRequestsChangePolicyDetails(FileRequestsPolicy fileRequestsPolicy) {
        this(fileRequestsPolicy, null);
    }

    public FileRequestsPolicy getNewValue() {
        return this.newValue;
    }

    public FileRequestsPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FileRequestsChangePolicyDetails fileRequestsChangePolicyDetails = (FileRequestsChangePolicyDetails) obj;
            if (this.newValue == fileRequestsChangePolicyDetails.newValue || this.newValue.equals(fileRequestsChangePolicyDetails.newValue)) {
                if (this.previousValue == fileRequestsChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(fileRequestsChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<FileRequestsChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileRequestsChangePolicyDetails fileRequestsChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            FileRequestsPolicy.Serializer.INSTANCE.serialize(fileRequestsChangePolicyDetails.newValue, gVar);
            if (fileRequestsChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(FileRequestsPolicy.Serializer.INSTANCE).serialize(fileRequestsChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileRequestsChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            FileRequestsPolicy fileRequestsPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                FileRequestsPolicy fileRequestsPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        fileRequestsPolicyDeserialize = FileRequestsPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        fileRequestsPolicy = (FileRequestsPolicy) StoneSerializers.nullable(FileRequestsPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (fileRequestsPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                FileRequestsChangePolicyDetails fileRequestsChangePolicyDetails = new FileRequestsChangePolicyDetails(fileRequestsPolicyDeserialize, fileRequestsPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileRequestsChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
