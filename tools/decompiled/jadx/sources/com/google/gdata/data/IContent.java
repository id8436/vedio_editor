package com.google.gdata.data;

/* JADX INFO: loaded from: classes3.dex */
public interface IContent {

    public class Type {
        public static final int HTML = 2;
        public static final int MEDIA = 7;
        public static final int OTHER_BINARY = 6;
        public static final int OTHER_TEXT = 4;
        public static final int OTHER_XML = 5;
        public static final int TEXT = 1;
        public static final int XHTML = 3;
    }

    String getLang();

    int getType();
}
