package com.adobe.premiereclip.prexport.fcpxml.filter;

import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class AudioLevelsFilter extends Filter {
    public AudioLevelsFilter() {
        super("Audio Levels", "audiolevels", "audiolevels", "audiolevels", Utils.MediaType.audio);
        this.mParameters.put("Level", new FilterParameter("Level", "level", 1.0f, "0", "3.98109"));
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.filter.Filter
    public void setParamValue(String str, float f2) {
        setParamValue(str, String.valueOf(f2));
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.filter.Filter
    public void setParamValue(String str, String str2) {
        float fFloatValue = Float.valueOf(str2).floatValue();
        if (str.equals("Level") && fFloatValue > 1.99d) {
            fFloatValue = 1.99f;
        }
        super.setParamValue(str, fFloatValue);
    }
}
