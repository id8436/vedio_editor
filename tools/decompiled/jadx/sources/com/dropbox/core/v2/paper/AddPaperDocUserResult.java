package com.dropbox.core.v2.paper;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum AddPaperDocUserResult {
    SUCCESS,
    UNKNOWN_ERROR,
    SHARING_OUTSIDE_TEAM_DISABLED,
    DAILY_LIMIT_REACHED,
    USER_IS_OWNER,
    FAILED_USER_DATA_RETRIEVAL,
    PERMISSION_ALREADY_GRANTED,
    OTHER;

    class Serializer extends UnionSerializer<AddPaperDocUserResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AddPaperDocUserResult addPaperDocUserResult, g gVar) throws IOException {
            switch (addPaperDocUserResult) {
                case SUCCESS:
                    gVar.b(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                    break;
                case UNKNOWN_ERROR:
                    gVar.b("unknown_error");
                    break;
                case SHARING_OUTSIDE_TEAM_DISABLED:
                    gVar.b("sharing_outside_team_disabled");
                    break;
                case DAILY_LIMIT_REACHED:
                    gVar.b("daily_limit_reached");
                    break;
                case USER_IS_OWNER:
                    gVar.b("user_is_owner");
                    break;
                case FAILED_USER_DATA_RETRIEVAL:
                    gVar.b("failed_user_data_retrieval");
                    break;
                case PERMISSION_ALREADY_GRANTED:
                    gVar.b("permission_already_granted");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AddPaperDocUserResult deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AddPaperDocUserResult addPaperDocUserResult;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if (AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS.equals(tag)) {
                addPaperDocUserResult = AddPaperDocUserResult.SUCCESS;
            } else if ("unknown_error".equals(tag)) {
                addPaperDocUserResult = AddPaperDocUserResult.UNKNOWN_ERROR;
            } else if ("sharing_outside_team_disabled".equals(tag)) {
                addPaperDocUserResult = AddPaperDocUserResult.SHARING_OUTSIDE_TEAM_DISABLED;
            } else if ("daily_limit_reached".equals(tag)) {
                addPaperDocUserResult = AddPaperDocUserResult.DAILY_LIMIT_REACHED;
            } else if ("user_is_owner".equals(tag)) {
                addPaperDocUserResult = AddPaperDocUserResult.USER_IS_OWNER;
            } else if ("failed_user_data_retrieval".equals(tag)) {
                addPaperDocUserResult = AddPaperDocUserResult.FAILED_USER_DATA_RETRIEVAL;
            } else if ("permission_already_granted".equals(tag)) {
                addPaperDocUserResult = AddPaperDocUserResult.PERMISSION_ALREADY_GRANTED;
            } else {
                addPaperDocUserResult = AddPaperDocUserResult.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return addPaperDocUserResult;
        }
    }
}
