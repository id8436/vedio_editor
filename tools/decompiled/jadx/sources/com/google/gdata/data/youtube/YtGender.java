package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "gender", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtGender extends AbstractExtension {
    private Value gender;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Value {
        MALE("m"),
        FEMALE("f");

        private String id;

        Value(String str) {
            this.id = str;
        }

        public String getId() {
            return this.id;
        }

        public static Value fromId(String str) {
            for (Value value : values()) {
                if (value.getId().equals(str)) {
                    return value;
                }
            }
            return null;
        }
    }

    public YtGender() {
    }

    public YtGender(Value value) {
        this.gender = value;
    }

    public Value getGender() {
        return this.gender;
    }

    public void setGender(Value value) {
        this.gender = value;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.gender != null) {
            attributeGenerator.setContent(this.gender.getId());
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.gender = Value.fromId(attributeHelper.consumeContent(true));
        if (this.gender == null) {
            throw new ParseException("Unknown gender. It should be m or f.");
        }
    }
}
