package com.twitter.sdk.android.core.a;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: BindingValuesAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
public class d implements JsonDeserializer<c>, JsonSerializer<c> {
    @Override // com.google.gson.JsonSerializer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JsonElement serialize(c cVar, Type type, JsonSerializationContext jsonSerializationContext) {
        return null;
    }

    @Override // com.google.gson.JsonDeserializer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (!jsonElement.isJsonObject()) {
            return new c();
        }
        Set<Map.Entry<String, JsonElement>> setEntrySet = jsonElement.getAsJsonObject().entrySet();
        HashMap map = new HashMap(32);
        for (Map.Entry<String, JsonElement> entry : setEntrySet) {
            map.put(entry.getKey(), a(entry.getValue().getAsJsonObject(), jsonDeserializationContext));
        }
        return new c(map);
    }

    Object a(JsonObject jsonObject, JsonDeserializationContext jsonDeserializationContext) {
        JsonElement jsonElement = jsonObject.get("type");
        if (jsonElement == null || !jsonElement.isJsonPrimitive()) {
            return null;
        }
        switch (jsonElement.getAsString()) {
        }
        return null;
    }
}
