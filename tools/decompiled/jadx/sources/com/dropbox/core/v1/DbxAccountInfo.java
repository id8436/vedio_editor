package com.dropbox.core.v1;

import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.d.a.a.i;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.google.gdata.data.appsforyourdomain.Name;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DbxAccountInfo extends Dumpable {
    private static final JsonReader.FieldMapping FM;
    private static final int FM_country = 2;
    private static final int FM_display_name = 1;
    private static final int FM_email = 6;
    private static final int FM_email_verified = 7;
    private static final int FM_name_details = 5;
    private static final int FM_quota_info = 4;
    private static final int FM_referral_link = 3;
    private static final int FM_uid = 0;
    public static final JsonReader<DbxAccountInfo> Reader = new JsonReader<DbxAccountInfo>() { // from class: com.dropbox.core.v1.DbxAccountInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final DbxAccountInfo read(k kVar) throws JsonReadException, IOException {
            Boolean field;
            Boolean bool = null;
            i iVarExpectObjectStart = JsonReader.expectObjectStart(kVar);
            long unsignedLongField = -1;
            NameDetails field2 = null;
            String field3 = null;
            Quota field4 = null;
            String field5 = null;
            String field6 = null;
            String field7 = null;
            while (kVar.c() == o.FIELD_NAME) {
                String strD = kVar.d();
                kVar.a();
                try {
                    int i = DbxAccountInfo.FM.get(strD);
                    switch (i) {
                        case -1:
                            JsonReader.skipValue(kVar);
                            field = bool;
                            continue;
                            bool = field;
                            break;
                        case 0:
                            unsignedLongField = JsonReader.readUnsignedLongField(kVar, strD, unsignedLongField);
                            field = bool;
                            continue;
                            bool = field;
                            break;
                        case 1:
                            field7 = JsonReader.StringReader.readField(kVar, strD, field7);
                            field = bool;
                            continue;
                            bool = field;
                            break;
                        case 2:
                            field6 = JsonReader.StringReader.readField(kVar, strD, field6);
                            field = bool;
                            continue;
                            bool = field;
                            break;
                        case 3:
                            field5 = JsonReader.StringReader.readField(kVar, strD, field5);
                            field = bool;
                            continue;
                            bool = field;
                            break;
                        case 4:
                            field4 = Quota.Reader.readField(kVar, strD, field4);
                            field = bool;
                            continue;
                            bool = field;
                            break;
                        case 5:
                            field2 = NameDetails.Reader.readField(kVar, strD, field2);
                            field = bool;
                            continue;
                            bool = field;
                            break;
                        case 6:
                            field3 = JsonReader.StringReader.readField(kVar, strD, field3);
                            field = bool;
                            continue;
                            bool = field;
                            break;
                        case 7:
                            field = JsonReader.BooleanReader.readField(kVar, strD, bool);
                            continue;
                            bool = field;
                            break;
                        default:
                            throw new AssertionError("bad index: " + i + ", field = \"" + strD + "\"");
                    }
                } catch (JsonReadException e2) {
                    throw e2.addFieldContext(strD);
                }
                throw e2.addFieldContext(strD);
            }
            JsonReader.expectObjectEnd(kVar);
            if (unsignedLongField < 0) {
                throw new JsonReadException("missing field \"uid\"", iVarExpectObjectStart);
            }
            if (field7 == null) {
                throw new JsonReadException("missing field \"display_name\"", iVarExpectObjectStart);
            }
            if (field6 == null) {
                throw new JsonReadException("missing field \"country\"", iVarExpectObjectStart);
            }
            if (field5 == null) {
                throw new JsonReadException("missing field \"referral_link\"", iVarExpectObjectStart);
            }
            if (field4 == null) {
                throw new JsonReadException("missing field \"quota_info\"", iVarExpectObjectStart);
            }
            if (field3 == null) {
                throw new JsonReadException("missing field \"email\"", iVarExpectObjectStart);
            }
            if (field2 == null) {
                throw new JsonReadException("missing field \"nameDetails\"", iVarExpectObjectStart);
            }
            if (bool == null) {
                throw new JsonReadException("missing field \"emailVerified\"", iVarExpectObjectStart);
            }
            return new DbxAccountInfo(unsignedLongField, field7, field6, field5, field4, field3, field2, bool.booleanValue());
        }
    };
    public final String country;
    public final String displayName;
    public final String email;
    public final boolean emailVerified;
    public final NameDetails nameDetails;
    public final Quota quota;
    public final String referralLink;
    public final long userId;

    public DbxAccountInfo(long j, String str, String str2, String str3, Quota quota, String str4, NameDetails nameDetails, boolean z) {
        this.userId = j;
        this.displayName = str;
        this.country = str2;
        this.referralLink = str3;
        this.quota = quota;
        this.email = str4;
        this.nameDetails = nameDetails;
        this.emailVerified = z;
    }

    @Override // com.dropbox.core.util.Dumpable
    protected void dumpFields(DumpWriter dumpWriter) {
        dumpWriter.f("userId").v(this.userId);
        dumpWriter.f("displayName").v(this.displayName);
        dumpWriter.f(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY).v(this.country);
        dumpWriter.f("referralLink").v(this.referralLink);
        dumpWriter.f("quota").v(this.quota);
        dumpWriter.f("nameDetails").v(this.nameDetails);
        dumpWriter.f("email").v(this.email);
        dumpWriter.f(AdobeEntitlementSession.AdobeEntitlementUserProfileEmailVerified).v(this.emailVerified);
    }

    public final class Quota extends Dumpable {
        private static final JsonReader.FieldMapping FM;
        private static final int FM_normal = 1;
        private static final int FM_quota = 0;
        private static final int FM_shared = 2;
        public static final JsonReader<Quota> Reader = new JsonReader<Quota>() { // from class: com.dropbox.core.v1.DbxAccountInfo.Quota.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final Quota read(k kVar) throws JsonReadException, IOException {
                long unsignedLongField = -1;
                i iVarExpectObjectStart = JsonReader.expectObjectStart(kVar);
                long unsignedLongField2 = -1;
                long unsignedLongField3 = -1;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    int i = Quota.FM.get(strD);
                    switch (i) {
                        case -1:
                            try {
                                JsonReader.skipValue(kVar);
                                continue;
                            } catch (JsonReadException e2) {
                                throw e2.addFieldContext(strD);
                            }
                            break;
                        case 0:
                            unsignedLongField3 = JsonReader.readUnsignedLongField(kVar, strD, unsignedLongField3);
                            continue;
                        case 1:
                            unsignedLongField2 = JsonReader.readUnsignedLongField(kVar, strD, unsignedLongField2);
                            continue;
                        case 2:
                            unsignedLongField = JsonReader.readUnsignedLongField(kVar, strD, unsignedLongField);
                            continue;
                        default:
                            throw new AssertionError("bad index: " + i + ", field = \"" + strD + "\"");
                    }
                    throw e2.addFieldContext(strD);
                }
                JsonReader.expectObjectEnd(kVar);
                if (unsignedLongField3 < 0) {
                    throw new JsonReadException("missing field \"quota\"", iVarExpectObjectStart);
                }
                if (unsignedLongField2 < 0) {
                    throw new JsonReadException("missing field \"normal\"", iVarExpectObjectStart);
                }
                if (unsignedLongField < 0) {
                    throw new JsonReadException("missing field \"shared\"", iVarExpectObjectStart);
                }
                return new Quota(unsignedLongField3, unsignedLongField2, unsignedLongField);
            }
        };
        public final long normal;
        public final long shared;
        public final long total;

        public Quota(long j, long j2, long j3) {
            this.total = j;
            this.normal = j2;
            this.shared = j3;
        }

        @Override // com.dropbox.core.util.Dumpable
        protected void dumpFields(DumpWriter dumpWriter) {
            dumpWriter.f("total").v(this.total);
            dumpWriter.f(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeNormal).v(this.normal);
            dumpWriter.f("shared").v(this.shared);
        }

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("quota", 0);
            builder.add(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeNormal, 1);
            builder.add("shared", 2);
            FM = builder.build();
        }
    }

    public final class NameDetails extends Dumpable {
        private static final JsonReader.FieldMapping FM;
        private static final int FM_familiar_name = 0;
        private static final int FM_given_name = 1;
        private static final int FM_surname = 2;
        public static final JsonReader<NameDetails> Reader = new JsonReader<NameDetails>() { // from class: com.dropbox.core.v1.DbxAccountInfo.NameDetails.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final NameDetails read(k kVar) throws JsonReadException, IOException {
                String field;
                String str;
                String field2;
                String str2 = null;
                i iVarExpectObjectStart = JsonReader.expectObjectStart(kVar);
                String str3 = null;
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    int i = NameDetails.FM.get(strD);
                    switch (i) {
                        case -1:
                            try {
                                JsonReader.skipValue(kVar);
                                field = str2;
                                str = str3;
                                field2 = str4;
                                continue;
                                str4 = field2;
                                str3 = str;
                                str2 = field;
                            } catch (JsonReadException e2) {
                                throw e2.addFieldContext(strD);
                            }
                            break;
                        case 0:
                            String str5 = str2;
                            str = str3;
                            field2 = JsonReader.StringReader.readField(kVar, strD, str4);
                            field = str5;
                            continue;
                            str4 = field2;
                            str3 = str;
                            str2 = field;
                            break;
                        case 1:
                            String field3 = JsonReader.StringReader.readField(kVar, strD, str3);
                            field2 = str4;
                            field = str2;
                            str = field3;
                            continue;
                            str4 = field2;
                            str3 = str;
                            str2 = field;
                            break;
                        case 2:
                            field = JsonReader.StringReader.readField(kVar, strD, str2);
                            str = str3;
                            field2 = str4;
                            continue;
                            str4 = field2;
                            str3 = str;
                            str2 = field;
                            break;
                        default:
                            throw new AssertionError("bad index: " + i + ", field = \"" + strD + "\"");
                    }
                    throw e2.addFieldContext(strD);
                }
                JsonReader.expectObjectEnd(kVar);
                if (str4 == null) {
                    throw new JsonReadException("missing field \"familiarName\"", iVarExpectObjectStart);
                }
                if (str2 == null) {
                    throw new JsonReadException("missing field \"surname\"", iVarExpectObjectStart);
                }
                if (str3 == null) {
                    throw new JsonReadException("missing field \"givenName\"", iVarExpectObjectStart);
                }
                return new NameDetails(str4, str3, str2);
            }
        };
        public final String familiarName;
        public final String givenName;
        public final String surname;

        public NameDetails(String str, String str2, String str3) {
            this.familiarName = str;
            this.givenName = str2;
            this.surname = str3;
        }

        @Override // com.dropbox.core.util.Dumpable
        protected void dumpFields(DumpWriter dumpWriter) {
            dumpWriter.f("familiarName").v(this.familiarName);
            dumpWriter.f(Name.ATTRIBUTE_GIVEN_NAME).v(this.givenName);
            dumpWriter.f("surname").v(this.surname);
        }

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("familiar_name", 0);
            builder.add("given_name", 1);
            builder.add("surname", 2);
            FM = builder.build();
        }
    }

    static {
        JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
        builder.add("uid", 0);
        builder.add("display_name", 1);
        builder.add(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY, 2);
        builder.add("referral_link", 3);
        builder.add("quota_info", 4);
        builder.add("name_details", 5);
        builder.add("email", 6);
        builder.add("email_verified", 7);
        FM = builder.build();
    }
}
