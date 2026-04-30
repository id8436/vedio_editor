package com.adobe.premiereclip.prexport.fcpxml.utils;

import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class VideoSettings {
    public Utils.VideoTimebase timebase = Utils.VideoTimebase.P_30;
    public boolean ntsc = false;
    public Utils.VideoAlphaType alphaType = Utils.VideoAlphaType.black;
    public Utils.VideoAspectRatio aspectRatio = Utils.VideoAspectRatio.square;
    public boolean anamorphic = false;
    public int width = 1920;
    public int height = 1080;
    public Utils.VideoFieldDominance fieldDominance = Utils.VideoFieldDominance.none;
}
