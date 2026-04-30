package com.dropbox.core.v2.team;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class ApiApp {
    protected final String appId;
    protected final String appName;
    protected final boolean isAppFolder;
    protected final Date linked;
    protected final String publisher;
    protected final String publisherUrl;

    public ApiApp(String str, String str2, boolean z, String str3, String str4, Date date) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'appId' is null");
        }
        this.appId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'appName' is null");
        }
        this.appName = str2;
        this.publisher = str3;
        this.publisherUrl = str4;
        this.linked = LangUtil.truncateMillis(date);
        this.isAppFolder = z;
    }

    public ApiApp(String str, String str2, boolean z) {
        this(str, str2, z, null, null, null);
    }

    public String getAppId() {
        return this.appId;
    }

    public String getAppName() {
        return this.appName;
    }

    public boolean getIsAppFolder() {
        return this.isAppFolder;
    }

    public String getPublisher() {
        return this.publisher;
    }

    public String getPublisherUrl() {
        return this.publisherUrl;
    }

    public Date getLinked() {
        return this.linked;
    }

    public static Builder newBuilder(String str, String str2, boolean z) {
        return new Builder(str, str2, z);
    }

    public class Builder {
        protected final String appId;
        protected final String appName;
        protected final boolean isAppFolder;
        protected Date linked;
        protected String publisher;
        protected String publisherUrl;

        protected Builder(String str, String str2, boolean z) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'appId' is null");
            }
            this.appId = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'appName' is null");
            }
            this.appName = str2;
            this.isAppFolder = z;
            this.publisher = null;
            this.publisherUrl = null;
            this.linked = null;
        }

        public Builder withPublisher(String str) {
            this.publisher = str;
            return this;
        }

        public Builder withPublisherUrl(String str) {
            this.publisherUrl = str;
            return this;
        }

        public Builder withLinked(Date date) {
            this.linked = LangUtil.truncateMillis(date);
            return this;
        }

        public ApiApp build() {
            return new ApiApp(this.appId, this.appName, this.isAppFolder, this.publisher, this.publisherUrl, this.linked);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.appId, this.appName, this.publisher, this.publisherUrl, this.linked, Boolean.valueOf(this.isAppFolder)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ApiApp apiApp = (ApiApp) obj;
            if ((this.appId == apiApp.appId || this.appId.equals(apiApp.appId)) && ((this.appName == apiApp.appName || this.appName.equals(apiApp.appName)) && this.isAppFolder == apiApp.isAppFolder && ((this.publisher == apiApp.publisher || (this.publisher != null && this.publisher.equals(apiApp.publisher))) && (this.publisherUrl == apiApp.publisherUrl || (this.publisherUrl != null && this.publisherUrl.equals(apiApp.publisherUrl)))))) {
                if (this.linked == apiApp.linked) {
                    return true;
                }
                if (this.linked != null && this.linked.equals(apiApp.linked)) {
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

    class Serializer extends StructSerializer<ApiApp> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ApiApp apiApp, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("app_id");
            StoneSerializers.string().serialize(apiApp.appId, gVar);
            gVar.a("app_name");
            StoneSerializers.string().serialize(apiApp.appName, gVar);
            gVar.a("is_app_folder");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(apiApp.isAppFolder), gVar);
            if (apiApp.publisher != null) {
                gVar.a("publisher");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(apiApp.publisher, gVar);
            }
            if (apiApp.publisherUrl != null) {
                gVar.a("publisher_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(apiApp.publisherUrl, gVar);
            }
            if (apiApp.linked != null) {
                gVar.a(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskLinkedKey);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(apiApp.linked, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ApiApp deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Date date = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                String str2 = null;
                Boolean bool = null;
                String strDeserialize = null;
                String strDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("app_id".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("app_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("is_app_folder".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("publisher".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("publisher_url".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskLinkedKey.equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"app_id\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"app_name\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"is_app_folder\" missing.");
                }
                ApiApp apiApp = new ApiApp(strDeserialize2, strDeserialize, bool.booleanValue(), str2, str, date);
                if (!z) {
                    expectEndObject(kVar);
                }
                return apiApp;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
