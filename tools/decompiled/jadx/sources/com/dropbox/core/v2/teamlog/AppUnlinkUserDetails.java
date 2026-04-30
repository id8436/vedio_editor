package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.AppLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AppUnlinkUserDetails {
    protected final AppLogInfo appInfo;

    public AppUnlinkUserDetails(AppLogInfo appLogInfo) {
        if (appLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'appInfo' is null");
        }
        this.appInfo = appLogInfo;
    }

    public AppLogInfo getAppInfo() {
        return this.appInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.appInfo});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AppUnlinkUserDetails appUnlinkUserDetails = (AppUnlinkUserDetails) obj;
        return this.appInfo == appUnlinkUserDetails.appInfo || this.appInfo.equals(appUnlinkUserDetails.appInfo);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<AppUnlinkUserDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AppUnlinkUserDetails appUnlinkUserDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("app_info");
            AppLogInfo.Serializer.INSTANCE.serialize(appUnlinkUserDetails.appInfo, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AppUnlinkUserDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            AppLogInfo appLogInfoDeserialize = null;
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
                    if ("app_info".equals(strD)) {
                        appLogInfoDeserialize = AppLogInfo.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (appLogInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"app_info\" missing.");
                }
                AppUnlinkUserDetails appUnlinkUserDetails = new AppUnlinkUserDetails(appLogInfoDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return appUnlinkUserDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
