package com.adobe.audiomixer;

/* JADX INFO: loaded from: classes.dex */
public interface IVideoTrack extends ITrack {
    IClip appendMedia(String str);

    IClip appendMedia(String str, VideoTime videoTime, VideoTime videoTime2, VideoTime videoTime3);

    IClip getClip(int i);

    int getClipCount();

    @Override // com.adobe.audiomixer.ITrack
    void reset();
}
