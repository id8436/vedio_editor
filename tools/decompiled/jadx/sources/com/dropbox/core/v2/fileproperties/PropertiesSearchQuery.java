package com.dropbox.core.v2.fileproperties;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.LogicalOperator;
import com.dropbox.core.v2.fileproperties.PropertiesSearchMode;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PropertiesSearchQuery {
    protected final LogicalOperator logicalOperator;
    protected final PropertiesSearchMode mode;
    protected final String query;

    public PropertiesSearchQuery(String str, PropertiesSearchMode propertiesSearchMode, LogicalOperator logicalOperator) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'query' is null");
        }
        this.query = str;
        if (propertiesSearchMode == null) {
            throw new IllegalArgumentException("Required value for 'mode' is null");
        }
        this.mode = propertiesSearchMode;
        if (logicalOperator == null) {
            throw new IllegalArgumentException("Required value for 'logicalOperator' is null");
        }
        this.logicalOperator = logicalOperator;
    }

    public PropertiesSearchQuery(String str, PropertiesSearchMode propertiesSearchMode) {
        this(str, propertiesSearchMode, LogicalOperator.OR_OPERATOR);
    }

    public String getQuery() {
        return this.query;
    }

    public PropertiesSearchMode getMode() {
        return this.mode;
    }

    public LogicalOperator getLogicalOperator() {
        return this.logicalOperator;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.query, this.mode, this.logicalOperator});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PropertiesSearchQuery propertiesSearchQuery = (PropertiesSearchQuery) obj;
            return (this.query == propertiesSearchQuery.query || this.query.equals(propertiesSearchQuery.query)) && (this.mode == propertiesSearchQuery.mode || this.mode.equals(propertiesSearchQuery.mode)) && (this.logicalOperator == propertiesSearchQuery.logicalOperator || this.logicalOperator.equals(propertiesSearchQuery.logicalOperator));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PropertiesSearchQuery> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PropertiesSearchQuery propertiesSearchQuery, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("query");
            StoneSerializers.string().serialize(propertiesSearchQuery.query, gVar);
            gVar.a(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey);
            PropertiesSearchMode.Serializer.INSTANCE.serialize(propertiesSearchQuery.mode, gVar);
            gVar.a("logical_operator");
            LogicalOperator.Serializer.INSTANCE.serialize(propertiesSearchQuery.logicalOperator, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PropertiesSearchQuery deserialize(k kVar, boolean z) throws IOException {
            String tag;
            LogicalOperator logicalOperatorDeserialize;
            PropertiesSearchMode propertiesSearchModeDeserialize;
            String strDeserialize;
            PropertiesSearchMode propertiesSearchMode = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                LogicalOperator logicalOperator = LogicalOperator.OR_OPERATOR;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("query".equals(strD)) {
                        LogicalOperator logicalOperator2 = logicalOperator;
                        propertiesSearchModeDeserialize = propertiesSearchMode;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        logicalOperatorDeserialize = logicalOperator2;
                    } else if (AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeKey.equals(strD)) {
                        strDeserialize = str;
                        logicalOperatorDeserialize = logicalOperator;
                        propertiesSearchModeDeserialize = PropertiesSearchMode.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("logical_operator".equals(strD)) {
                        logicalOperatorDeserialize = LogicalOperator.Serializer.INSTANCE.deserialize(kVar);
                        propertiesSearchModeDeserialize = propertiesSearchMode;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        logicalOperatorDeserialize = logicalOperator;
                        propertiesSearchModeDeserialize = propertiesSearchMode;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    propertiesSearchMode = propertiesSearchModeDeserialize;
                    logicalOperator = logicalOperatorDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"query\" missing.");
                }
                if (propertiesSearchMode == null) {
                    throw new j(kVar, "Required field \"mode\" missing.");
                }
                PropertiesSearchQuery propertiesSearchQuery = new PropertiesSearchQuery(str, propertiesSearchMode, logicalOperator);
                if (!z) {
                    expectEndObject(kVar);
                }
                return propertiesSearchQuery;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
