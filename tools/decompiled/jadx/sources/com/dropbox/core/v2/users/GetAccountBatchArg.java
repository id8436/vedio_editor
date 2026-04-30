package com.dropbox.core.v2.users;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class GetAccountBatchArg {
    protected final List<String> accountIds;

    public GetAccountBatchArg(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'accountIds' is null");
        }
        if (list.size() < 1) {
            throw new IllegalArgumentException("List 'accountIds' has fewer than 1 items");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list 'accountIds' is null");
            }
            if (str.length() < 40) {
                throw new IllegalArgumentException("Stringan item in list 'accountIds' is shorter than 40");
            }
            if (str.length() > 40) {
                throw new IllegalArgumentException("Stringan item in list 'accountIds' is longer than 40");
            }
        }
        this.accountIds = list;
    }

    public List<String> getAccountIds() {
        return this.accountIds;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accountIds});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetAccountBatchArg getAccountBatchArg = (GetAccountBatchArg) obj;
        return this.accountIds == getAccountBatchArg.accountIds || this.accountIds.equals(getAccountBatchArg.accountIds);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetAccountBatchArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetAccountBatchArg getAccountBatchArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("account_ids");
            StoneSerializers.list(StoneSerializers.string()).serialize(getAccountBatchArg.accountIds, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetAccountBatchArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("account_ids".equals(strD)) {
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"account_ids\" missing.");
                }
                GetAccountBatchArg getAccountBatchArg = new GetAccountBatchArg(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getAccountBatchArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
