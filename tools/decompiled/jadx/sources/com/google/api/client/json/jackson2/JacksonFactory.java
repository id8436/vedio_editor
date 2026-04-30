package com.google.api.client.json.jackson2;

import com.d.a.a.c;
import com.d.a.a.d;
import com.d.a.a.h;
import com.d.a.a.o;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import com.google.api.client.util.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public final class JacksonFactory extends JsonFactory {
    private final d factory = new d();

    public JacksonFactory() {
        this.factory.a(h.AUTO_CLOSE_JSON_CONTENT, false);
    }

    public static JacksonFactory getDefaultInstance() {
        return InstanceHolder.INSTANCE;
    }

    class InstanceHolder {
        static final JacksonFactory INSTANCE = new JacksonFactory();

        InstanceHolder() {
        }
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonGenerator createJsonGenerator(OutputStream outputStream, Charset charset) throws IOException {
        return new JacksonGenerator(this, this.factory.b(outputStream, c.UTF8));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonGenerator createJsonGenerator(Writer writer) throws IOException {
        return new JacksonGenerator(this, this.factory.b(writer));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(Reader reader) throws IOException {
        Preconditions.checkNotNull(reader);
        return new JacksonParser(this, this.factory.b(reader));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(InputStream inputStream) throws IOException {
        Preconditions.checkNotNull(inputStream);
        return new JacksonParser(this, this.factory.b(inputStream));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(InputStream inputStream, Charset charset) throws IOException {
        Preconditions.checkNotNull(inputStream);
        return new JacksonParser(this, this.factory.b(inputStream));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(String str) throws IOException {
        Preconditions.checkNotNull(str);
        return new JacksonParser(this, this.factory.b(str));
    }

    static JsonToken convert(o oVar) {
        if (oVar == null) {
            return null;
        }
        switch (oVar) {
            case END_ARRAY:
                return JsonToken.END_ARRAY;
            case START_ARRAY:
                return JsonToken.START_ARRAY;
            case END_OBJECT:
                return JsonToken.END_OBJECT;
            case START_OBJECT:
                return JsonToken.START_OBJECT;
            case VALUE_FALSE:
                return JsonToken.VALUE_FALSE;
            case VALUE_TRUE:
                return JsonToken.VALUE_TRUE;
            case VALUE_NULL:
                return JsonToken.VALUE_NULL;
            case VALUE_STRING:
                return JsonToken.VALUE_STRING;
            case VALUE_NUMBER_FLOAT:
                return JsonToken.VALUE_NUMBER_FLOAT;
            case VALUE_NUMBER_INT:
                return JsonToken.VALUE_NUMBER_INT;
            case FIELD_NAME:
                return JsonToken.FIELD_NAME;
            default:
                return JsonToken.NOT_AVAILABLE;
        }
    }
}
