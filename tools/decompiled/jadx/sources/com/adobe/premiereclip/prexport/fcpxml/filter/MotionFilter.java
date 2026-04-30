package com.adobe.premiereclip.prexport.fcpxml.filter;

import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class MotionFilter extends Filter {
    public MotionFilter() {
        super("Basic Motion", "basic", "motion", "motion", Utils.MediaType.video);
        this.mParameters.put("Scale", new FilterParameter("Scale", "scale", "100", "0", "1000"));
        this.mParameters.put("Rotation", new FilterParameter("Rotation", "rotation", "0", "-8640", "8640"));
        this.mParameters.put("Center", new HorizVertFilterParameter("Center", "center", 0, 0));
        this.mParameters.put("Anchor Point", new HorizVertFilterParameter("Anchor Point", "centerOffset", 0, 0));
    }
}
