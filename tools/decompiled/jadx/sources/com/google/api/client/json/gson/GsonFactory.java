package com.google.api.client.json.gson;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import com.google.api.client.json.JsonParser;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Charsets;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public class GsonFactory extends JsonFactory {
    @Beta
    public static GsonFactory getDefaultInstance() {
        return InstanceHolder.INSTANCE;
    }

    @Beta
    class InstanceHolder {
        static final GsonFactory INSTANCE = new GsonFactory();

        InstanceHolder() {
        }
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(InputStream inputStream) {
        return createJsonParser(new InputStreamReader(inputStream, Charsets.UTF_8));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(InputStream inputStream, Charset charset) {
        return charset == null ? createJsonParser(inputStream) : createJsonParser(new InputStreamReader(inputStream, charset));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(String str) {
        return createJsonParser(new StringReader(str));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(Reader reader) {
        return new GsonParser(this, new JsonReader(reader));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonGenerator createJsonGenerator(OutputStream outputStream, Charset charset) {
        return createJsonGenerator(new OutputStreamWriter(outputStream, charset));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonGenerator createJsonGenerator(Writer writer) {
        return new GsonGenerator(this, new JsonWriter(writer));
    }
}
