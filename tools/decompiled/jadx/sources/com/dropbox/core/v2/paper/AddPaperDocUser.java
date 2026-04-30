package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.AddMember;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class AddPaperDocUser extends RefPaperDoc {
    protected final String customMessage;
    protected final List<AddMember> members;
    protected final boolean quiet;

    public AddPaperDocUser(String str, List<AddMember> list, String str2, boolean z) {
        super(str);
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'members' is null");
        }
        if (list.size() > 20) {
            throw new IllegalArgumentException("List 'members' has more than 20 items");
        }
        Iterator<AddMember> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'members' is null");
            }
        }
        this.members = list;
        this.customMessage = str2;
        this.quiet = z;
    }

    public AddPaperDocUser(String str, List<AddMember> list) {
        this(str, list, null, false);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String getDocId() {
        return this.docId;
    }

    public List<AddMember> getMembers() {
        return this.members;
    }

    public String getCustomMessage() {
        return this.customMessage;
    }

    public boolean getQuiet() {
        return this.quiet;
    }

    public static Builder newBuilder(String str, List<AddMember> list) {
        return new Builder(str, list);
    }

    public class Builder {
        protected String customMessage;
        protected final String docId;
        protected final List<AddMember> members;
        protected boolean quiet;

        protected Builder(String str, List<AddMember> list) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'docId' is null");
            }
            this.docId = str;
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'members' is null");
            }
            if (list.size() > 20) {
                throw new IllegalArgumentException("List 'members' has more than 20 items");
            }
            Iterator<AddMember> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'members' is null");
                }
            }
            this.members = list;
            this.customMessage = null;
            this.quiet = false;
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

        public AddPaperDocUser build() {
            return new AddPaperDocUser(this.docId, this.members, this.customMessage, this.quiet);
        }
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.members, this.customMessage, Boolean.valueOf(this.quiet)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AddPaperDocUser addPaperDocUser = (AddPaperDocUser) obj;
            return (this.docId == addPaperDocUser.docId || this.docId.equals(addPaperDocUser.docId)) && (this.members == addPaperDocUser.members || this.members.equals(addPaperDocUser.members)) && ((this.customMessage == addPaperDocUser.customMessage || (this.customMessage != null && this.customMessage.equals(addPaperDocUser.customMessage))) && this.quiet == addPaperDocUser.quiet);
        }
        return false;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<AddPaperDocUser> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AddPaperDocUser addPaperDocUser, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("doc_id");
            StoneSerializers.string().serialize(addPaperDocUser.docId, gVar);
            gVar.a("members");
            StoneSerializers.list(AddMember.Serializer.INSTANCE).serialize(addPaperDocUser.members, gVar);
            if (addPaperDocUser.customMessage != null) {
                gVar.a("custom_message");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(addPaperDocUser.customMessage, gVar);
            }
            gVar.a("quiet");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(addPaperDocUser.quiet), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AddPaperDocUser deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String str;
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
                    if ("doc_id".equals(strD)) {
                        Boolean bool2 = bool;
                        str = str2;
                        list = list2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("members".equals(strD)) {
                        strDeserialize = str3;
                        String str4 = str2;
                        list = (List) StoneSerializers.list(AddMember.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                        str = str4;
                    } else if ("custom_message".equals(strD)) {
                        list = list2;
                        strDeserialize = str3;
                        Boolean bool3 = bool;
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool3;
                    } else if ("quiet".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        str = str2;
                        list = list2;
                        strDeserialize = str3;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        str = str2;
                        list = list2;
                        strDeserialize = str3;
                    }
                    str3 = strDeserialize;
                    list2 = list;
                    str2 = str;
                    bool = boolDeserialize;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"doc_id\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"members\" missing.");
                }
                AddPaperDocUser addPaperDocUser = new AddPaperDocUser(str3, list2, str2, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return addPaperDocUser;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
