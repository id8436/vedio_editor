package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.MemberSelector;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class AddFileMemberArgs {
    protected final AccessLevel accessLevel;
    protected final boolean addMessageAsComment;
    protected final String customMessage;
    protected final String file;
    protected final List<MemberSelector> members;
    protected final boolean quiet;

    public AddFileMemberArgs(String str, List<MemberSelector> list, String str2, boolean z, AccessLevel accessLevel, boolean z2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'file' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'file' is shorter than 1");
        }
        if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
            throw new IllegalArgumentException("String 'file' does not match pattern");
        }
        this.file = str;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'members' is null");
        }
        Iterator<MemberSelector> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'members' is null");
            }
        }
        this.members = list;
        this.customMessage = str2;
        this.quiet = z;
        if (accessLevel == null) {
            throw new IllegalArgumentException("Required value for 'accessLevel' is null");
        }
        this.accessLevel = accessLevel;
        this.addMessageAsComment = z2;
    }

    public AddFileMemberArgs(String str, List<MemberSelector> list) {
        this(str, list, null, false, AccessLevel.VIEWER, false);
    }

    public String getFile() {
        return this.file;
    }

    public List<MemberSelector> getMembers() {
        return this.members;
    }

    public String getCustomMessage() {
        return this.customMessage;
    }

    public boolean getQuiet() {
        return this.quiet;
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public boolean getAddMessageAsComment() {
        return this.addMessageAsComment;
    }

    public static Builder newBuilder(String str, List<MemberSelector> list) {
        return new Builder(str, list);
    }

    public class Builder {
        protected AccessLevel accessLevel;
        protected boolean addMessageAsComment;
        protected String customMessage;
        protected final String file;
        protected final List<MemberSelector> members;
        protected boolean quiet;

        protected Builder(String str, List<MemberSelector> list) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'file' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("String 'file' is shorter than 1");
            }
            if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
                throw new IllegalArgumentException("String 'file' does not match pattern");
            }
            this.file = str;
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'members' is null");
            }
            Iterator<MemberSelector> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'members' is null");
                }
            }
            this.members = list;
            this.customMessage = null;
            this.quiet = false;
            this.accessLevel = AccessLevel.VIEWER;
            this.addMessageAsComment = false;
        }

        public Builder withCustomMessage(String str) {
            this.customMessage = str;
            return this;
        }

        public Builder withQuiet(Boolean bool) {
            if (bool != null) {
                this.quiet = bool.booleanValue();
            } else {
                this.quiet = false;
            }
            return this;
        }

        public Builder withAccessLevel(AccessLevel accessLevel) {
            if (accessLevel != null) {
                this.accessLevel = accessLevel;
            } else {
                this.accessLevel = AccessLevel.VIEWER;
            }
            return this;
        }

        public Builder withAddMessageAsComment(Boolean bool) {
            if (bool != null) {
                this.addMessageAsComment = bool.booleanValue();
            } else {
                this.addMessageAsComment = false;
            }
            return this;
        }

        public AddFileMemberArgs build() {
            return new AddFileMemberArgs(this.file, this.members, this.customMessage, this.quiet, this.accessLevel, this.addMessageAsComment);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.file, this.members, this.customMessage, Boolean.valueOf(this.quiet), this.accessLevel, Boolean.valueOf(this.addMessageAsComment)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AddFileMemberArgs addFileMemberArgs = (AddFileMemberArgs) obj;
            return (this.file == addFileMemberArgs.file || this.file.equals(addFileMemberArgs.file)) && (this.members == addFileMemberArgs.members || this.members.equals(addFileMemberArgs.members)) && ((this.customMessage == addFileMemberArgs.customMessage || (this.customMessage != null && this.customMessage.equals(addFileMemberArgs.customMessage))) && this.quiet == addFileMemberArgs.quiet && ((this.accessLevel == addFileMemberArgs.accessLevel || this.accessLevel.equals(addFileMemberArgs.accessLevel)) && this.addMessageAsComment == addFileMemberArgs.addMessageAsComment));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<AddFileMemberArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AddFileMemberArgs addFileMemberArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("file");
            StoneSerializers.string().serialize(addFileMemberArgs.file, gVar);
            gVar.a("members");
            StoneSerializers.list(MemberSelector.Serializer.INSTANCE).serialize(addFileMemberArgs.members, gVar);
            if (addFileMemberArgs.customMessage != null) {
                gVar.a("custom_message");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(addFileMemberArgs.customMessage, gVar);
            }
            gVar.a("quiet");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(addFileMemberArgs.quiet), gVar);
            gVar.a("access_level");
            AccessLevel.Serializer.INSTANCE.serialize(addFileMemberArgs.accessLevel, gVar);
            gVar.a("add_message_as_comment");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(addFileMemberArgs.addMessageAsComment), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AddFileMemberArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            Boolean boolDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                AccessLevel accessLevelDeserialize = AccessLevel.VIEWER;
                Boolean bool2 = false;
                List list = null;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("file".equals(strD)) {
                        boolDeserialize2 = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("members".equals(strD)) {
                        list = (List) StoneSerializers.list(MemberSelector.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool3 = bool;
                        strDeserialize = str2;
                        boolDeserialize2 = bool3;
                    } else if ("custom_message".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool4 = bool;
                        strDeserialize = str2;
                        boolDeserialize2 = bool4;
                    } else if ("quiet".equals(strD)) {
                        strDeserialize = str2;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("access_level".equals(strD)) {
                        accessLevelDeserialize = AccessLevel.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool5 = bool;
                        strDeserialize = str2;
                        boolDeserialize2 = bool5;
                    } else if ("add_message_as_comment".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool6 = bool;
                        strDeserialize = str2;
                        boolDeserialize2 = bool6;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool2;
                        Boolean bool7 = bool;
                        strDeserialize = str2;
                        boolDeserialize2 = bool7;
                    }
                    bool2 = boolDeserialize;
                    Boolean bool8 = boolDeserialize2;
                    str2 = strDeserialize;
                    bool = bool8;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"file\" missing.");
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"members\" missing.");
                }
                AddFileMemberArgs addFileMemberArgs = new AddFileMemberArgs(str2, list, str, bool.booleanValue(), accessLevelDeserialize, bool2.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return addFileMemberArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
