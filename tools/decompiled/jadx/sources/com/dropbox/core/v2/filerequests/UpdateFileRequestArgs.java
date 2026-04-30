package com.dropbox.core.v2.filerequests;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.filerequests.UpdateFileRequestDeadline;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class UpdateFileRequestArgs {
    protected final UpdateFileRequestDeadline deadline;
    protected final String destination;
    protected final String id;
    protected final Boolean open;
    protected final String title;

    public UpdateFileRequestArgs(String str, String str2, String str3, UpdateFileRequestDeadline updateFileRequestDeadline, Boolean bool) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z]+", str)) {
            throw new IllegalArgumentException("String 'id' does not match pattern");
        }
        this.id = str;
        if (str2 != null && str2.length() < 1) {
            throw new IllegalArgumentException("String 'title' is shorter than 1");
        }
        this.title = str2;
        if (str3 != null && !Pattern.matches("/(.|[\\r\\n])*", str3)) {
            throw new IllegalArgumentException("String 'destination' does not match pattern");
        }
        this.destination = str3;
        if (updateFileRequestDeadline == null) {
            throw new IllegalArgumentException("Required value for 'deadline' is null");
        }
        this.deadline = updateFileRequestDeadline;
        this.open = bool;
    }

    public UpdateFileRequestArgs(String str) {
        this(str, null, null, UpdateFileRequestDeadline.NO_UPDATE, null);
    }

    public String getId() {
        return this.id;
    }

    public String getTitle() {
        return this.title;
    }

    public String getDestination() {
        return this.destination;
    }

    public UpdateFileRequestDeadline getDeadline() {
        return this.deadline;
    }

    public Boolean getOpen() {
        return this.open;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected UpdateFileRequestDeadline deadline;
        protected String destination;
        protected final String id;
        protected Boolean open;
        protected String title;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z]+", str)) {
                throw new IllegalArgumentException("String 'id' does not match pattern");
            }
            this.id = str;
            this.title = null;
            this.destination = null;
            this.deadline = UpdateFileRequestDeadline.NO_UPDATE;
            this.open = null;
        }

        public Builder withTitle(String str) {
            if (str != null && str.length() < 1) {
                throw new IllegalArgumentException("String 'title' is shorter than 1");
            }
            this.title = str;
            return this;
        }

        public Builder withDestination(String str) {
            if (str != null && !Pattern.matches("/(.|[\\r\\n])*", str)) {
                throw new IllegalArgumentException("String 'destination' does not match pattern");
            }
            this.destination = str;
            return this;
        }

        public Builder withDeadline(UpdateFileRequestDeadline updateFileRequestDeadline) {
            if (updateFileRequestDeadline != null) {
                this.deadline = updateFileRequestDeadline;
            } else {
                this.deadline = UpdateFileRequestDeadline.NO_UPDATE;
            }
            return this;
        }

        public Builder withOpen(Boolean bool) {
            this.open = bool;
            return this;
        }

        public UpdateFileRequestArgs build() {
            return new UpdateFileRequestArgs(this.id, this.title, this.destination, this.deadline, this.open);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.id, this.title, this.destination, this.deadline, this.open});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UpdateFileRequestArgs updateFileRequestArgs = (UpdateFileRequestArgs) obj;
            if ((this.id == updateFileRequestArgs.id || this.id.equals(updateFileRequestArgs.id)) && ((this.title == updateFileRequestArgs.title || (this.title != null && this.title.equals(updateFileRequestArgs.title))) && ((this.destination == updateFileRequestArgs.destination || (this.destination != null && this.destination.equals(updateFileRequestArgs.destination))) && (this.deadline == updateFileRequestArgs.deadline || this.deadline.equals(updateFileRequestArgs.deadline))))) {
                if (this.open == updateFileRequestArgs.open) {
                    return true;
                }
                if (this.open != null && this.open.equals(updateFileRequestArgs.open)) {
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

    class Serializer extends StructSerializer<UpdateFileRequestArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UpdateFileRequestArgs updateFileRequestArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("id");
            StoneSerializers.string().serialize(updateFileRequestArgs.id, gVar);
            if (updateFileRequestArgs.title != null) {
                gVar.a("title");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(updateFileRequestArgs.title, gVar);
            }
            if (updateFileRequestArgs.destination != null) {
                gVar.a(AdobeCommunityConstants.AdobeCommunityCopyJSONKeyDestination);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(updateFileRequestArgs.destination, gVar);
            }
            gVar.a("deadline");
            UpdateFileRequestDeadline.Serializer.INSTANCE.serialize(updateFileRequestArgs.deadline, gVar);
            if (updateFileRequestArgs.open != null) {
                gVar.a("open");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(updateFileRequestArgs.open, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UpdateFileRequestArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean bool = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                UpdateFileRequestDeadline updateFileRequestDeadlineDeserialize = UpdateFileRequestDeadline.NO_UPDATE;
                String str = null;
                String str2 = null;
                String strDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("title".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if (AdobeCommunityConstants.AdobeCommunityCopyJSONKeyDestination.equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("deadline".equals(strD)) {
                        updateFileRequestDeadlineDeserialize = UpdateFileRequestDeadline.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("open".equals(strD)) {
                        bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"id\" missing.");
                }
                UpdateFileRequestArgs updateFileRequestArgs = new UpdateFileRequestArgs(strDeserialize, str2, str, updateFileRequestDeadlineDeserialize, bool);
                if (!z) {
                    expectEndObject(kVar);
                }
                return updateFileRequestArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
