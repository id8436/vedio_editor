package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.FileCommentsPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FileCommentsChangePolicyDetails {
    protected final FileCommentsPolicy newValue;
    protected final FileCommentsPolicy previousValue;

    public FileCommentsChangePolicyDetails(FileCommentsPolicy fileCommentsPolicy, FileCommentsPolicy fileCommentsPolicy2) {
        if (fileCommentsPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = fileCommentsPolicy;
        this.previousValue = fileCommentsPolicy2;
    }

    public FileCommentsChangePolicyDetails(FileCommentsPolicy fileCommentsPolicy) {
        this(fileCommentsPolicy, null);
    }

    public FileCommentsPolicy getNewValue() {
        return this.newValue;
    }

    public FileCommentsPolicy getPreviousValue() {
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
            FileCommentsChangePolicyDetails fileCommentsChangePolicyDetails = (FileCommentsChangePolicyDetails) obj;
            if (this.newValue == fileCommentsChangePolicyDetails.newValue || this.newValue.equals(fileCommentsChangePolicyDetails.newValue)) {
                if (this.previousValue == fileCommentsChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(fileCommentsChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<FileCommentsChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileCommentsChangePolicyDetails fileCommentsChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            FileCommentsPolicy.Serializer.INSTANCE.serialize(fileCommentsChangePolicyDetails.newValue, gVar);
            if (fileCommentsChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(FileCommentsPolicy.Serializer.INSTANCE).serialize(fileCommentsChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileCommentsChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            FileCommentsPolicy fileCommentsPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                FileCommentsPolicy fileCommentsPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        fileCommentsPolicyDeserialize = FileCommentsPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        fileCommentsPolicy = (FileCommentsPolicy) StoneSerializers.nullable(FileCommentsPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (fileCommentsPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                FileCommentsChangePolicyDetails fileCommentsChangePolicyDetails = new FileCommentsChangePolicyDetails(fileCommentsPolicyDeserialize, fileCommentsPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileCommentsChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
