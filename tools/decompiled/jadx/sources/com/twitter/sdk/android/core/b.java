package com.twitter.sdk.android.core;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: AuthTokenAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
public class b implements JsonDeserializer<a>, JsonSerializer<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Map<String, Class<? extends a>> f3868a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Gson f3869b = new Gson();

    static {
        f3868a.put("oauth1a", TwitterAuthToken.class);
        f3868a.put("oauth2", OAuth2Token.class);
        f3868a.put("guest", GuestAuthToken.class);
    }

    @Override // com.google.gson.JsonSerializer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JsonElement serialize(a aVar, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("auth_type", a(aVar.getClass()));
        jsonObject.add("auth_token", this.f3869b.toJsonTree(aVar));
        return jsonObject;
    }

    @Override // com.google.gson.JsonDeserializer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        JsonObject asJsonObject = jsonElement.getAsJsonObject();
        String asString = asJsonObject.getAsJsonPrimitive("auth_type").getAsString();
        return (a) this.f3869b.fromJson(asJsonObject.get("auth_token"), (Class) f3868a.get(asString));
    }

    static String a(Class<? extends a> cls) {
        for (Map.Entry<String, Class<? extends a>> entry : f3868a.entrySet()) {
            if (entry.getValue().equals(cls)) {
                return entry.getKey();
            }
        }
        return "";
    }
}
