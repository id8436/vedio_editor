package com.google.api.client.json.gson;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import com.google.api.client.util.Preconditions;
import com.google.gson.stream.JsonReader;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class GsonParser extends JsonParser {
    private List<String> currentNameStack = new ArrayList();
    private String currentText;
    private JsonToken currentToken;
    private final GsonFactory factory;
    private final JsonReader reader;

    GsonParser(GsonFactory gsonFactory, JsonReader jsonReader) {
        this.factory = gsonFactory;
        this.reader = jsonReader;
        jsonReader.setLenient(true);
    }

    @Override // com.google.api.client.json.JsonParser
    public void close() throws IOException {
        this.reader.close();
    }

    @Override // com.google.api.client.json.JsonParser
    public String getCurrentName() {
        if (this.currentNameStack.isEmpty()) {
            return null;
        }
        return this.currentNameStack.get(this.currentNameStack.size() - 1);
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken getCurrentToken() {
        return this.currentToken;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonFactory getFactory() {
        return this.factory;
    }

    @Override // com.google.api.client.json.JsonParser
    public byte getByteValue() {
        checkNumber();
        return Byte.valueOf(this.currentText).byteValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public short getShortValue() {
        checkNumber();
        return Short.valueOf(this.currentText).shortValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public int getIntValue() {
        checkNumber();
        return Integer.valueOf(this.currentText).intValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public float getFloatValue() {
        checkNumber();
        return Float.valueOf(this.currentText).floatValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public BigInteger getBigIntegerValue() {
        checkNumber();
        return new BigInteger(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public BigDecimal getDecimalValue() {
        checkNumber();
        return new BigDecimal(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public double getDoubleValue() {
        checkNumber();
        return Double.valueOf(this.currentText).doubleValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public long getLongValue() {
        checkNumber();
        return Long.valueOf(this.currentText).longValue();
    }

    private void checkNumber() {
        Preconditions.checkArgument(this.currentToken == JsonToken.VALUE_NUMBER_INT || this.currentToken == JsonToken.VALUE_NUMBER_FLOAT);
    }

    @Override // com.google.api.client.json.JsonParser
    public String getText() {
        return this.currentText;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken nextToken() throws IOException {
        com.google.gson.stream.JsonToken jsonTokenPeek;
        if (this.currentToken != null) {
            switch (this.currentToken) {
                case START_ARRAY:
                    this.reader.beginArray();
                    this.currentNameStack.add(null);
                    break;
                case START_OBJECT:
                    this.reader.beginObject();
                    this.currentNameStack.add(null);
                    break;
            }
        }
        try {
            jsonTokenPeek = this.reader.peek();
        } catch (EOFException e2) {
            jsonTokenPeek = com.google.gson.stream.JsonToken.END_DOCUMENT;
        }
        switch (jsonTokenPeek) {
            case BEGIN_ARRAY:
                this.currentText = "[";
                this.currentToken = JsonToken.START_ARRAY;
                break;
            case END_ARRAY:
                this.currentText = "]";
                this.currentToken = JsonToken.END_ARRAY;
                this.currentNameStack.remove(this.currentNameStack.size() - 1);
                this.reader.endArray();
                break;
            case BEGIN_OBJECT:
                this.currentText = "{";
                this.currentToken = JsonToken.START_OBJECT;
                break;
            case END_OBJECT:
                this.currentText = "}";
                this.currentToken = JsonToken.END_OBJECT;
                this.currentNameStack.remove(this.currentNameStack.size() - 1);
                this.reader.endObject();
                break;
            case BOOLEAN:
                if (this.reader.nextBoolean()) {
                    this.currentText = "true";
                    this.currentToken = JsonToken.VALUE_TRUE;
                } else {
                    this.currentText = "false";
                    this.currentToken = JsonToken.VALUE_FALSE;
                }
                break;
            case NULL:
                this.currentText = "null";
                this.currentToken = JsonToken.VALUE_NULL;
                this.reader.nextNull();
                break;
            case STRING:
                this.currentText = this.reader.nextString();
                this.currentToken = JsonToken.VALUE_STRING;
                break;
            case NUMBER:
                this.currentText = this.reader.nextString();
                this.currentToken = this.currentText.indexOf(46) == -1 ? JsonToken.VALUE_NUMBER_INT : JsonToken.VALUE_NUMBER_FLOAT;
                break;
            case NAME:
                this.currentText = this.reader.nextName();
                this.currentToken = JsonToken.FIELD_NAME;
                this.currentNameStack.set(this.currentNameStack.size() - 1, this.currentText);
                break;
            default:
                this.currentText = null;
                this.currentToken = null;
                break;
        }
        return this.currentToken;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.api.client.json.JsonParser
    public JsonParser skipChildren() throws IOException {
        if (this.currentToken != null) {
            switch (this.currentToken) {
                case START_ARRAY:
                    this.reader.skipValue();
                    this.currentText = "]";
                    this.currentToken = JsonToken.END_ARRAY;
                    break;
                case START_OBJECT:
                    this.reader.skipValue();
                    this.currentText = "}";
                    this.currentToken = JsonToken.END_OBJECT;
                    break;
            }
        }
        return this;
    }
}
