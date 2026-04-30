package com.google.api.client.json.jackson2;

import com.d.a.a.k;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes3.dex */
final class JacksonParser extends JsonParser {
    private final JacksonFactory factory;
    private final k parser;

    @Override // com.google.api.client.json.JsonParser
    public JacksonFactory getFactory() {
        return this.factory;
    }

    JacksonParser(JacksonFactory jacksonFactory, k kVar) {
        this.factory = jacksonFactory;
        this.parser = kVar;
    }

    @Override // com.google.api.client.json.JsonParser
    public void close() throws IOException {
        this.parser.close();
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken nextToken() throws IOException {
        return JacksonFactory.convert(this.parser.a());
    }

    @Override // com.google.api.client.json.JsonParser
    public String getCurrentName() throws IOException {
        return this.parser.d();
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken getCurrentToken() {
        return JacksonFactory.convert(this.parser.c());
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonParser skipChildren() throws IOException {
        this.parser.b();
        return this;
    }

    @Override // com.google.api.client.json.JsonParser
    public String getText() throws IOException {
        return this.parser.g();
    }

    @Override // com.google.api.client.json.JsonParser
    public byte getByteValue() throws IOException {
        return this.parser.k();
    }

    @Override // com.google.api.client.json.JsonParser
    public float getFloatValue() throws IOException {
        return this.parser.p();
    }

    @Override // com.google.api.client.json.JsonParser
    public int getIntValue() throws IOException {
        return this.parser.m();
    }

    @Override // com.google.api.client.json.JsonParser
    public short getShortValue() throws IOException {
        return this.parser.l();
    }

    @Override // com.google.api.client.json.JsonParser
    public BigInteger getBigIntegerValue() throws IOException {
        return this.parser.o();
    }

    @Override // com.google.api.client.json.JsonParser
    public BigDecimal getDecimalValue() throws IOException {
        return this.parser.r();
    }

    @Override // com.google.api.client.json.JsonParser
    public double getDoubleValue() throws IOException {
        return this.parser.q();
    }

    @Override // com.google.api.client.json.JsonParser
    public long getLongValue() throws IOException {
        return this.parser.n();
    }
}
