package com.google.gdata.data.photos;

import com.google.gdata.data.Category;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes3.dex */
public interface TagData extends GphotoData {
    public static final String KIND = "tag";
    public static final Category TAG_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/photos/2007#tag");
    public static final String TAG_KIND = "http://schemas.google.com/photos/2007#tag";

    Integer getWeight() throws ParseException;

    void setWeight(Integer num);
}
