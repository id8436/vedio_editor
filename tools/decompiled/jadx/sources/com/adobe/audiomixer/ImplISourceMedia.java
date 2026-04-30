package com.adobe.audiomixer;

import com.adobe.decoderfactory.AudioInfo;
import com.adobe.decoderfactory.DecoderFactory;
import com.adobe.decoderfactory.IAudioDecoder;

/* JADX INFO: loaded from: classes.dex */
class ImplISourceMedia implements ISourceMedia {
    private AudioInfo audioMediaInfo;
    private String sourceMediaPath;

    public ImplISourceMedia() {
    }

    public ImplISourceMedia(String str) {
        this.sourceMediaPath = str;
    }

    @Override // com.adobe.audiomixer.ISourceMedia
    public String getPath() {
        return this.sourceMediaPath;
    }

    public boolean hasAudio() {
        return this.sourceMediaPath != null;
    }

    private void Initialize() {
    }

    @Override // com.adobe.audiomixer.ISourceMedia
    public AudioInfo getAudioMediaInfo() {
        IAudioDecoder audioDecoder;
        if (this.audioMediaInfo != null) {
            return this.audioMediaInfo;
        }
        if (this.sourceMediaPath != null && !this.sourceMediaPath.isEmpty() && (audioDecoder = DecoderFactory.getAudioDecoder(0, this.sourceMediaPath)) != null) {
            this.audioMediaInfo = audioDecoder.getSourceInfo();
        } else {
            this.audioMediaInfo = new AudioInfo(0, 0, AudioInfo.SampleType.Signed16Bit, 0L);
        }
        return this.audioMediaInfo;
    }
}
