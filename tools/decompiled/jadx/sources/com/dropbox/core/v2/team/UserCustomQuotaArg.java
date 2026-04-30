package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.UserSelectorArg;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class UserCustomQuotaArg {
    protected final long quotaGb;
    protected final UserSelectorArg user;

    public UserCustomQuotaArg(UserSelectorArg userSelectorArg, long j) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
        if (j < 25) {
            throw new IllegalArgumentException("Number 'quotaGb' is smaller than 25L");
        }
        this.quotaGb = j;
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public long getQuotaGb() {
        return this.quotaGb;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, Long.valueOf(this.quotaGb)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UserCustomQuotaArg userCustomQuotaArg = (UserCustomQuotaArg) obj;
            return (this.user == userCustomQuotaArg.user || this.user.equals(userCustomQuotaArg.user)) && this.quotaGb == userCustomQuotaArg.quotaGb;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UserCustomQuotaArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UserCustomQuotaArg userCustomQuotaArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("user");
            UserSelectorArg.Serializer.INSTANCE.serialize(userCustomQuotaArg.user, gVar);
            gVar.a("quota_gb");
            StoneSerializers.uInt32().serialize(Long.valueOf(userCustomQuotaArg.quotaGb), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UserCustomQuotaArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                UserSelectorArg userSelectorArgDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("user".equals(strD)) {
                        userSelectorArgDeserialize = UserSelectorArg.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("quota_gb".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (userSelectorArgDeserialize == null) {
                    throw new j(kVar, "Required field \"user\" missing.");
                }
                if (lDeserialize == null) {
                    throw new j(kVar, "Required field \"quota_gb\" missing.");
                }
                UserCustomQuotaArg userCustomQuotaArg = new UserCustomQuotaArg(userSelectorArgDeserialize, lDeserialize.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return userCustomQuotaArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
