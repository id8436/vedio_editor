package com.dropbox.core.v2.teamlog;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.google.gdata.model.gd.Reminder;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum TfaConfiguration {
    DISABLED,
    ENABLED,
    SMS,
    AUTHENTICATOR,
    OTHER;

    class Serializer extends UnionSerializer<TfaConfiguration> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TfaConfiguration tfaConfiguration, g gVar) throws IOException {
            switch (tfaConfiguration) {
                case DISABLED:
                    gVar.b("disabled");
                    break;
                case ENABLED:
                    gVar.b(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey);
                    break;
                case SMS:
                    gVar.b(Reminder.Method.SMS);
                    break;
                case AUTHENTICATOR:
                    gVar.b("authenticator");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TfaConfiguration deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TfaConfiguration tfaConfiguration;
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
            if ("disabled".equals(tag)) {
                tfaConfiguration = TfaConfiguration.DISABLED;
            } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey.equals(tag)) {
                tfaConfiguration = TfaConfiguration.ENABLED;
            } else if (Reminder.Method.SMS.equals(tag)) {
                tfaConfiguration = TfaConfiguration.SMS;
            } else if ("authenticator".equals(tag)) {
                tfaConfiguration = TfaConfiguration.AUTHENTICATOR;
            } else {
                tfaConfiguration = TfaConfiguration.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return tfaConfiguration;
        }
    }
}
