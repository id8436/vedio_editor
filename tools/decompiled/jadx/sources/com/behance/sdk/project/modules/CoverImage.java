package com.behance.sdk.project.modules;

import android.graphics.Bitmap;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class CoverImage {
    private static final int COVER_IMAGE_HEIGHT = 632;
    private static final int COVER_IMAGE_WIDTH = 808;
    private static final ILogger logger = LoggerFactory.getLogger(CoverImage.class);
    private transient Bitmap coverImage;
    private ImageModule originalImage;

    public CoverImage(ImageModule imageModule, Bitmap bitmap) {
        this.originalImage = imageModule;
        this.coverImage = bitmap;
    }

    public String getName() {
        return this.originalImage != null ? this.originalImage.getName() : "";
    }

    public Bitmap getBitMap() {
        return this.coverImage;
    }

    public void remove() {
        if (this.originalImage != null) {
            this.originalImage.clear();
        }
    }

    public ImageModule getOriginalImage() {
        return this.originalImage;
    }

    public byte[] getByteArray() throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        if (this.coverImage != null) {
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(this.coverImage, COVER_IMAGE_WIDTH, COVER_IMAGE_HEIGHT, false);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream = null;
            }
            try {
                bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                        return byteArray;
                    } catch (IOException e2) {
                        logger.error(e2);
                        return byteArray;
                    }
                }
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e3) {
                        logger.error(e3);
                    }
                }
                throw th;
            }
        }
        return new byte[0];
    }
}
