package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "rating", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtRating extends AbstractExtension {
    private static final String NUM_DISLIKES = "numDislikes";
    private static final String NUM_LIKES = "numLikes";
    private static final String VALUE = "value";
    private int numDislikes;
    private int numLikes;
    private String value;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Value {
        public static final String DISLIKE = "dislike";
        public static final String LIKE = "like";
        private static final String[] ALL_VALUES = {DISLIKE, LIKE};

        public static String[] values() {
            return ALL_VALUES;
        }

        private Value() {
        }
    }

    public YtRating() {
    }

    public YtRating(int i, int i2) {
        this.numLikes = i;
        this.numDislikes = i2;
    }

    public YtRating(String str) {
        this.value = str;
    }

    public int getNumLikes() {
        return this.numLikes;
    }

    public void setNumLikes(int i) {
        this.numLikes = i;
    }

    public int getNumDislikes() {
        return this.numDislikes;
    }

    public void setNumDislikes(int i) {
        this.numDislikes = i;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.numLikes = attributeHelper.consumeInteger(NUM_LIKES, false);
        this.numDislikes = attributeHelper.consumeInteger(NUM_DISLIKES, false);
        this.value = attributeHelper.consume(VALUE, false);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        if (this.numLikes > 0) {
            attributeGenerator.put(NUM_LIKES, this.numLikes);
        }
        if (this.numDislikes > 0) {
            attributeGenerator.put(NUM_DISLIKES, this.numDislikes);
        }
        if (this.value != null) {
            attributeGenerator.put(VALUE, this.value);
        }
    }
}
