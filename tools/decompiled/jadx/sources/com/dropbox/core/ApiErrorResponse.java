package com.dropbox.core;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class ApiErrorResponse<T> {
    private final T error;
    private LocalizedText userMessage;

    public ApiErrorResponse(T t, LocalizedText localizedText) {
        if (t == null) {
            throw new NullPointerException(Adobe360Constants.kAdobe360SatusError);
        }
        this.error = t;
        this.userMessage = localizedText;
    }

    public T getError() {
        return this.error;
    }

    public LocalizedText getUserMessage() {
        return this.userMessage;
    }

    final class Serializer<T> extends StoneSerializer<ApiErrorResponse<T>> {
        private StoneSerializer<T> errSerializer;

        public Serializer(StoneSerializer<T> stoneSerializer) {
            this.errSerializer = stoneSerializer;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ApiErrorResponse<T> apiErrorResponse, g gVar) throws IOException {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ApiErrorResponse<T> deserialize(k kVar) throws IOException {
            LocalizedText localizedTextDeserialize = null;
            expectStartObject(kVar);
            T tDeserialize = null;
            while (kVar.c() == o.FIELD_NAME) {
                String strD = kVar.d();
                kVar.a();
                if (Adobe360Constants.kAdobe360SatusError.equals(strD)) {
                    tDeserialize = this.errSerializer.deserialize(kVar);
                } else if ("user_message".equals(strD)) {
                    localizedTextDeserialize = LocalizedText.STONE_SERIALIZER.deserialize(kVar);
                } else {
                    skipValue(kVar);
                }
            }
            if (tDeserialize == null) {
                throw new j(kVar, "Required field \"error\" missing.");
            }
            ApiErrorResponse<T> apiErrorResponse = new ApiErrorResponse<>(tDeserialize, localizedTextDeserialize);
            expectEndObject(kVar);
            return apiErrorResponse;
        }
    }
}
