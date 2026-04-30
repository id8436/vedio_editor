package com.adobe.premiereclip.prexport.fcpxml.filter;

import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class LooksFilter extends Filter {
    public LooksFilter(String str) {
        super(str, "Lumetri", "", "", Utils.MediaType.video);
        this.mParameters.put("path", new FilterParameter("path", "path", "", "", ""));
    }
}
