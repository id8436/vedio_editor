package com.adobe.premiereclip.looks;

import android.content.Context;
import android.widget.ImageView;
import com.learnncode.mediachooser.b.a;
import com.learnncode.mediachooser.b.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class CandyLook extends BaseLook {
    private String cubeDataUrl;
    private String libraryId;
    private String renditionPathUrl;

    public String getLibraryId() {
        return this.libraryId;
    }

    public void setLibraryId(String str) {
        this.libraryId = str;
    }

    public CandyLook(String str, String str2) {
        super(str, str2);
    }

    public CandyLook(CandyLook candyLook) {
        super(candyLook.getLookId(), candyLook.getLookName());
        this.cubeDataUrl = candyLook.getCubeDataUrl();
        this.renditionPathUrl = candyLook.getRenditionPathUrl();
        this.libraryId = candyLook.getLibraryId();
    }

    public String getRenditionPathUrl() {
        return this.renditionPathUrl;
    }

    public void setRenditionPathUrl(String str) {
        this.renditionPathUrl = str;
    }

    public String getCubeDataUrl() {
        return this.cubeDataUrl;
    }

    public void setCubeDataUrl(String str) {
        this.cubeDataUrl = str;
    }

    @Override // com.adobe.premiereclip.looks.BaseLook
    public void drawThumbnail(Context context, ImageView imageView) {
        new a(context, imageView).a(b.f3681a, this.renditionPathUrl);
    }

    @Override // com.adobe.premiereclip.looks.BaseLook
    public InputStream getCubeData(Context context) {
        try {
            return new FileInputStream(new File(this.cubeDataUrl));
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
