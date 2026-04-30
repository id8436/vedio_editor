package com.google.api.client.json.jackson2;

import com.d.a.a.g;
import com.google.api.client.json.JsonGenerator;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes3.dex */
final class JacksonGenerator extends JsonGenerator {
    private final JacksonFactory factory;
    private final g generator;

    @Override // com.google.api.client.json.JsonGenerator
    public JacksonFactory getFactory() {
        return this.factory;
    }

    JacksonGenerator(JacksonFactory jacksonFactory, g gVar) {
        this.factory = jacksonFactory;
        this.generator = gVar;
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void flush() throws IOException {
        this.generator.flush();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void close() throws IOException {
        this.generator.close();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeBoolean(boolean z) throws IOException {
        this.generator.a(z);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeEndArray() throws IOException {
        this.generator.d();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeEndObject() throws IOException {
        this.generator.f();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        this.generator.a(str);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNull() throws IOException {
        this.generator.g();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(int i) throws IOException {
        this.generator.c(i);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(long j) throws IOException {
        this.generator.a(j);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(BigInteger bigInteger) throws IOException {
        this.generator.a(bigInteger);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(double d2) throws IOException {
        this.generator.a(d2);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(float f2) throws IOException {
        this.generator.a(f2);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) throws IOException {
        this.generator.a(bigDecimal);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(String str) throws IOException {
        this.generator.d(str);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeStartArray() throws IOException {
        this.generator.c();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeStartObject() throws IOException {
        this.generator.e();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeString(String str) throws IOException {
        this.generator.b(str);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void enablePrettyPrint() throws IOException {
        this.generator.b();
    }
}
