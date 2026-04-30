package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum LogicalOperator {
    OR_OPERATOR,
    OTHER;

    class Serializer extends UnionSerializer<LogicalOperator> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LogicalOperator logicalOperator, g gVar) throws IOException {
            switch (logicalOperator) {
                case OR_OPERATOR:
                    gVar.b("or_operator");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public LogicalOperator deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            LogicalOperator logicalOperator;
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
            if ("or_operator".equals(tag)) {
                logicalOperator = LogicalOperator.OR_OPERATOR;
            } else {
                logicalOperator = LogicalOperator.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return logicalOperator;
        }
    }
}
