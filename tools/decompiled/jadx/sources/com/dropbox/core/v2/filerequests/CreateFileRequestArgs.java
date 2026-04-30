package com.dropbox.core.v2.filerequests;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.filerequests.FileRequestDeadline;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class CreateFileRequestArgs {
    protected final FileRequestDeadline deadline;
    protected final String destination;
    protected final boolean open;
    protected final String title;

    public CreateFileRequestArgs(String str, String str2, FileRequestDeadline fileRequestDeadline, boolean z) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'title' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'title' is shorter than 1");
        }
        this.title = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'destination' is null");
        }
        if (!Pattern.matches("/(.|[\\r\\n])*", str2)) {
            throw new IllegalArgumentException("String 'destination' does not match pattern");
        }
        this.destination = str2;
        this.deadline = fileRequestDeadline;
        this.open = z;
    }

    public CreateFileRequestArgs(String str, String str2) {
        this(str, str2, null, true);
    }

    public String getTitle() {
        return this.title;
    }

    public String getDestination() {
        return this.destination;
    }

    public FileRequestDeadline getDeadline() {
        return this.deadline;
    }

    public boolean getOpen() {
        return this.open;
    }

    public static Builder newBuilder(String str, String str2) {
        return new Builder(str, str2);
    }

    public class Builder {
        protected FileRequestDeadline deadline;
        protected final String destination;
        protected boolean open;
        protected final String title;

        protected Builder(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'title' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("String 'title' is shorter than 1");
            }
            this.title = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'destination' is null");
            }
            if (!Pattern.matches("/(.|[\\r\\n])*", str2)) {
                throw new IllegalArgumentException("String 'destination' does not match pattern");
            }
            this.destination = str2;
            this.deadline = null;
            this.open = true;
        }

        public Builder withDeadline(FileRequestDeadline fileRequestDeadline) {
            this.deadline = fileRequestDeadline;
            return this;
        }

        public Builder withOpen(Boolean bool) {
            if (bool != null) {
                this.open = bool.booleanValue();
            } else {
                this.open = true;
            }
            return this;
        }

        public CreateFileRequestArgs build() {
            return new CreateFileRequestArgs(this.title, this.destination, this.deadline, this.open);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.title, this.destination, this.deadline, Boolean.valueOf(this.open)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            CreateFileRequestArgs createFileRequestArgs = (CreateFileRequestArgs) obj;
            return (this.title == createFileRequestArgs.title || this.title.equals(createFileRequestArgs.title)) && (this.destination == createFileRequestArgs.destination || this.destination.equals(createFileRequestArgs.destination)) && ((this.deadline == createFileRequestArgs.deadline || (this.deadline != null && this.deadline.equals(createFileRequestArgs.deadline))) && this.open == createFileRequestArgs.open);
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<CreateFileRequestArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(CreateFileRequestArgs createFileRequestArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("title");
            StoneSerializers.string().serialize(createFileRequestArgs.title, gVar);
            gVar.a(AdobeCommunityConstants.AdobeCommunityCopyJSONKeyDestination);
            StoneSerializers.string().serialize(createFileRequestArgs.destination, gVar);
            if (createFileRequestArgs.deadline != null) {
                gVar.a("deadline");
                StoneSerializers.nullableStruct(FileRequestDeadline.Serializer.INSTANCE).serialize(createFileRequestArgs.deadline, gVar);
            }
            gVar.a("open");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(createFileRequestArgs.open), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public CreateFileRequestArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            FileRequestDeadline fileRequestDeadline;
            String strDeserialize;
            String strDeserialize2;
            FileRequestDeadline fileRequestDeadline2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = true;
                String str = null;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("title".equals(strD)) {
                        Boolean bool2 = bool;
                        fileRequestDeadline = fileRequestDeadline2;
                        strDeserialize = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if (AdobeCommunityConstants.AdobeCommunityCopyJSONKeyDestination.equals(strD)) {
                        strDeserialize2 = str2;
                        FileRequestDeadline fileRequestDeadline3 = fileRequestDeadline2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                        fileRequestDeadline = fileRequestDeadline3;
                    } else if ("deadline".equals(strD)) {
                        strDeserialize = str;
                        strDeserialize2 = str2;
                        Boolean bool3 = bool;
                        fileRequestDeadline = (FileRequestDeadline) StoneSerializers.nullableStruct(FileRequestDeadline.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool3;
                    } else if ("open".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        fileRequestDeadline = fileRequestDeadline2;
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        fileRequestDeadline = fileRequestDeadline2;
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                    fileRequestDeadline2 = fileRequestDeadline;
                    bool = boolDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"title\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"destination\" missing.");
                }
                CreateFileRequestArgs createFileRequestArgs = new CreateFileRequestArgs(str2, str, fileRequestDeadline2, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return createFileRequestArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
