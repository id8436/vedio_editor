package com.adobe.premiereclip.prexport.fcpxml.filter;

import com.adobe.premiereclip.prexport.fcpxml.XmlElement;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FilterParameter {
    protected String mId;
    protected String mMaxValue;
    protected String mMinValue;
    protected String mName;
    protected String mValue;
    protected List<XmlElement> mValueElements = new ArrayList();
    protected List<KeyFrame> mKeyFrames = new ArrayList();

    public FilterParameter(String str, String str2, String str3, String str4, String str5) {
        this.mName = str;
        this.mId = str2;
        this.mValue = str3;
        this.mMinValue = str4;
        this.mMaxValue = str5;
    }

    public FilterParameter(String str, String str2, float f2, String str3, String str4) {
        this.mName = str;
        this.mId = str2;
        this.mValue = String.valueOf(f2);
        this.mMinValue = str3;
        this.mMaxValue = str4;
    }

    public void setValue(String str) {
        this.mValue = str;
    }

    public void setValue(float f2) {
        this.mValue = String.valueOf(f2);
    }

    public void setValue(String str, long j) {
        this.mKeyFrames.add(new KeyFrame(j, str));
    }

    public void setValue(float f2, long j) {
        this.mKeyFrames.add(new KeyFrame(j, f2));
    }

    public void setValue(float f2, float f3) {
    }

    public String getValue() {
        return this.mValue;
    }

    public List<KeyFrame> getKeyframes() {
        return this.mKeyFrames;
    }

    public List<XmlElement> getValueElements() {
        return this.mValueElements;
    }

    public String getId() {
        return this.mId;
    }

    public String getMaxValue() {
        return this.mMaxValue;
    }

    public String getMinValue() {
        return this.mMinValue;
    }
}
