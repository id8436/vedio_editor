package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.PaperDocPermissionLevel;
import com.dropbox.core.v2.sharing.UserInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class UserInfoWithPermissionLevel {
    protected final PaperDocPermissionLevel permissionLevel;
    protected final UserInfo user;

    public UserInfoWithPermissionLevel(UserInfo userInfo, PaperDocPermissionLevel paperDocPermissionLevel) {
        if (userInfo == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userInfo;
        if (paperDocPermissionLevel == null) {
            throw new IllegalArgumentException("Required value for 'permissionLevel' is null");
        }
        this.permissionLevel = paperDocPermissionLevel;
    }

    public UserInfo getUser() {
        return this.user;
    }

    public PaperDocPermissionLevel getPermissionLevel() {
        return this.permissionLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, this.permissionLevel});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UserInfoWithPermissionLevel userInfoWithPermissionLevel = (UserInfoWithPermissionLevel) obj;
            return (this.user == userInfoWithPermissionLevel.user || this.user.equals(userInfoWithPermissionLevel.user)) && (this.permissionLevel == userInfoWithPermissionLevel.permissionLevel || this.permissionLevel.equals(userInfoWithPermissionLevel.permissionLevel));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UserInfoWithPermissionLevel> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UserInfoWithPermissionLevel userInfoWithPermissionLevel, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("user");
            UserInfo.Serializer.INSTANCE.serialize(userInfoWithPermissionLevel.user, gVar);
            gVar.a("permission_level");
            PaperDocPermissionLevel.Serializer.INSTANCE.serialize(userInfoWithPermissionLevel.permissionLevel, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UserInfoWithPermissionLevel deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PaperDocPermissionLevel paperDocPermissionLevelDeserialize;
            UserInfo userInfoDeserialize;
            PaperDocPermissionLevel paperDocPermissionLevel = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                UserInfo userInfo = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("user".equals(strD)) {
                        PaperDocPermissionLevel paperDocPermissionLevel2 = paperDocPermissionLevel;
                        userInfoDeserialize = UserInfo.Serializer.INSTANCE.deserialize(kVar);
                        paperDocPermissionLevelDeserialize = paperDocPermissionLevel2;
                    } else if ("permission_level".equals(strD)) {
                        paperDocPermissionLevelDeserialize = PaperDocPermissionLevel.Serializer.INSTANCE.deserialize(kVar);
                        userInfoDeserialize = userInfo;
                    } else {
                        skipValue(kVar);
                        paperDocPermissionLevelDeserialize = paperDocPermissionLevel;
                        userInfoDeserialize = userInfo;
                    }
                    userInfo = userInfoDeserialize;
                    paperDocPermissionLevel = paperDocPermissionLevelDeserialize;
                }
                if (userInfo == null) {
                    throw new j(kVar, "Required field \"user\" missing.");
                }
                if (paperDocPermissionLevel == null) {
                    throw new j(kVar, "Required field \"permission_level\" missing.");
                }
                UserInfoWithPermissionLevel userInfoWithPermissionLevel = new UserInfoWithPermissionLevel(userInfo, paperDocPermissionLevel);
                if (!z) {
                    expectEndObject(kVar);
                }
                return userInfoWithPermissionLevel;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
