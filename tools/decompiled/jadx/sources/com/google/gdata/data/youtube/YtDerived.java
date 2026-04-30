package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "derived", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtDerived extends AbstractFreeTextExtension {

    /* JADX INFO: loaded from: classes3.dex */
    public final class Value {
        public static final String AUTO_SYNC = "autoSync";
        public static final String SPEECH_RECOGNITION = "speechRecognition";

        private Value() {
        }
    }

    public YtDerived() {
    }

    public YtDerived(String str) {
        super(str);
    }
}
