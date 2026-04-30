package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.ListFolderMembersCursorArg;
import com.dropbox.core.v2.sharing.MemberAction;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class ListFolderMembersArgs extends ListFolderMembersCursorArg {
    protected final String sharedFolderId;

    public ListFolderMembersArgs(String str, List<MemberAction> list, long j) {
        super(list, j);
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str;
    }

    public ListFolderMembersArgs(String str) {
        this(str, null, 1000L);
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg
    public List<MemberAction> getActions() {
        return this.actions;
    }

    @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg
    public long getLimit() {
        return this.limit;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder extends ListFolderMembersCursorArg.Builder {
        protected final String sharedFolderId;

        @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg.Builder
        public /* bridge */ /* synthetic */ ListFolderMembersCursorArg.Builder withActions(List list) {
            return withActions((List<MemberAction>) list);
        }

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str;
        }

        @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg.Builder
        public Builder withActions(List<MemberAction> list) {
            super.withActions(list);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg.Builder
        public Builder withLimit(Long l) {
            super.withLimit(l);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg.Builder
        public ListFolderMembersArgs build() {
            return new ListFolderMembersArgs(this.sharedFolderId, this.actions, this.limit);
        }
    }

    @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderId}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListFolderMembersArgs listFolderMembersArgs = (ListFolderMembersArgs) obj;
            return (this.sharedFolderId == listFolderMembersArgs.sharedFolderId || this.sharedFolderId.equals(listFolderMembersArgs.sharedFolderId)) && (this.actions == listFolderMembersArgs.actions || (this.actions != null && this.actions.equals(listFolderMembersArgs.actions))) && this.limit == listFolderMembersArgs.limit;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListFolderMembersArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFolderMembersArgs listFolderMembersArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_folder_id");
            StoneSerializers.string().serialize(listFolderMembersArgs.sharedFolderId, gVar);
            if (listFolderMembersArgs.actions != null) {
                gVar.a("actions");
                StoneSerializers.nullable(StoneSerializers.list(MemberAction.Serializer.INSTANCE)).serialize(listFolderMembersArgs.actions, gVar);
            }
            gVar.a("limit");
            StoneSerializers.uInt32().serialize(Long.valueOf(listFolderMembersArgs.limit), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFolderMembersArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            List list;
            String strDeserialize;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = 1000L;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("shared_folder_id".equals(strD)) {
                        Long l2 = l;
                        list = list2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("actions".equals(strD)) {
                        strDeserialize = str;
                        lDeserialize = l;
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberAction.Serializer.INSTANCE)).deserialize(kVar);
                    } else if ("limit".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                        list = list2;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        list = list2;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    list2 = list;
                    l = lDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"shared_folder_id\" missing.");
                }
                ListFolderMembersArgs listFolderMembersArgs = new ListFolderMembersArgs(str, list2, l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFolderMembersArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
