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
public class UserCustomQuotaResult {
    protected final Long quotaGb;
    protected final UserSelectorArg user;

    public UserCustomQuotaResult(UserSelectorArg userSelectorArg, Long l) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
        if (l != null && l.longValue() < 25) {
            throw new IllegalArgumentException("Number 'quotaGb' is smaller than 25L");
        }
        this.quotaGb = l;
    }

    public UserCustomQuotaResult(UserSelectorArg userSelectorArg) {
        this(userSelectorArg, null);
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public Long getQuotaGb() {
        return this.quotaGb;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, this.quotaGb});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UserCustomQuotaResult userCustomQuotaResult = (UserCustomQuotaResult) obj;
            if (this.user == userCustomQuotaResult.user || this.user.equals(userCustomQuotaResult.user)) {
                if (this.quotaGb == userCustomQuotaResult.quotaGb) {
                    return true;
                }
                if (this.quotaGb != null && this.quotaGb.equals(userCustomQuotaResult.quotaGb)) {
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

    class Serializer extends StructSerializer<UserCustomQuotaResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UserCustomQuotaResult userCustomQuotaResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("user");
            UserSelectorArg.Serializer.INSTANCE.serialize(userCustomQuotaResult.user, gVar);
            if (userCustomQuotaResult.quotaGb != null) {
                gVar.a("quota_gb");
                StoneSerializers.nullable(StoneSerializers.uInt32()).serialize(userCustomQuotaResult.quotaGb, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UserCustomQuotaResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long l = null;
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
                        l = (Long) StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (userSelectorArgDeserialize == null) {
                    throw new j(kVar, "Required field \"user\" missing.");
                }
                UserCustomQuotaResult userCustomQuotaResult = new UserCustomQuotaResult(userSelectorArgDeserialize, l);
                if (!z) {
                    expectEndObject(kVar);
                }
                return userCustomQuotaResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
