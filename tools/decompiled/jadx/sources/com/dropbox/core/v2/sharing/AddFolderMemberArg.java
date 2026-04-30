package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AddMember;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class AddFolderMemberArg {
    protected final String customMessage;
    protected final List<AddMember> members;
    protected final boolean quiet;
    protected final String sharedFolderId;

    public AddFolderMemberArg(String str, List<AddMember> list, boolean z, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'members' is null");
        }
        Iterator<AddMember> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'members' is null");
            }
        }
        this.members = list;
        this.quiet = z;
        if (str2 != null && str2.length() < 1) {
            throw new IllegalArgumentException("String 'customMessage' is shorter than 1");
        }
        this.customMessage = str2;
    }

    public AddFolderMemberArg(String str, List<AddMember> list) {
        this(str, list, false, null);
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public List<AddMember> getMembers() {
        return this.members;
    }

    public boolean getQuiet() {
        return this.quiet;
    }

    public String getCustomMessage() {
        return this.customMessage;
    }

    public static Builder newBuilder(String str, List<AddMember> list) {
        return new Builder(str, list);
    }

    public class Builder {
        protected String customMessage;
        protected final List<AddMember> members;
        protected boolean quiet;
        protected final String sharedFolderId;

        protected Builder(String str, List<AddMember> list) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str;
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'members' is null");
            }
            Iterator<AddMember> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'members' is null");
                }
            }
            this.members = list;
            this.quiet = false;
            this.customMessage = null;
        }

        public Builder withQuiet(Boolean bool) {
            if (bool != null) {
                this.quiet = bool.booleanValue();
            } else {
                this.quiet = false;
            }
            return this;
        }

        public Builder withCustomMessage(String str) {
            if (str != null && str.length() < 1) {
                throw new IllegalArgumentException("String 'customMessage' is shorter than 1");
            }
            this.customMessage = str;
            return this;
        }

        public AddFolderMemberArg build() {
            return new AddFolderMemberArg(this.sharedFolderId, this.members, this.quiet, this.customMessage);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderId, this.members, Boolean.valueOf(this.quiet), this.customMessage});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AddFolderMemberArg addFolderMemberArg = (AddFolderMemberArg) obj;
            if ((this.sharedFolderId == addFolderMemberArg.sharedFolderId || this.sharedFolderId.equals(addFolderMemberArg.sharedFolderId)) && ((this.members == addFolderMemberArg.members || this.members.equals(addFolderMemberArg.members)) && this.quiet == addFolderMemberArg.quiet)) {
                if (this.customMessage == addFolderMemberArg.customMessage) {
                    return true;
                }
                if (this.customMessage != null && this.customMessage.equals(addFolderMemberArg.customMessage)) {
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

    class Serializer extends StructSerializer<AddFolderMemberArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AddFolderMemberArg addFolderMemberArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_folder_id");
            StoneSerializers.string().serialize(addFolderMemberArg.sharedFolderId, gVar);
            gVar.a("members");
            StoneSerializers.list(AddMember.Serializer.INSTANCE).serialize(addFolderMemberArg.members, gVar);
            gVar.a("quiet");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(addFolderMemberArg.quiet), gVar);
            if (addFolderMemberArg.customMessage != null) {
                gVar.a("custom_message");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(addFolderMemberArg.customMessage, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AddFolderMemberArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            Boolean boolDeserialize;
            List list;
            String strDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                List list2 = null;
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("shared_folder_id".equals(strD)) {
                        String str4 = str2;
                        boolDeserialize = bool;
                        list = list2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str4;
                    } else if ("members".equals(strD)) {
                        strDeserialize = str3;
                        Boolean bool2 = bool;
                        list = (List) StoneSerializers.list(AddMember.Serializer.INSTANCE).deserialize(kVar);
                        str = str2;
                        boolDeserialize = bool2;
                    } else if ("quiet".equals(strD)) {
                        list = list2;
                        strDeserialize = str3;
                        String str5 = str2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        str = str5;
                    } else if ("custom_message".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                        list = list2;
                        strDeserialize = str3;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        boolDeserialize = bool;
                        list = list2;
                        strDeserialize = str3;
                    }
                    str3 = strDeserialize;
                    list2 = list;
                    bool = boolDeserialize;
                    str2 = str;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"shared_folder_id\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"members\" missing.");
                }
                AddFolderMemberArg addFolderMemberArg = new AddFolderMemberArg(str3, list2, bool.booleanValue(), str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return addFolderMemberArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
