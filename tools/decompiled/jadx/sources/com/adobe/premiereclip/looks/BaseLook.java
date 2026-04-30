package com.adobe.premiereclip.looks;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.adobe.premiereclip.PremiereClipApplication;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseLook {
    private String id;
    private String name;
    private int mWidth = 16;
    private int mHeight = 256;

    public abstract void drawThumbnail(Context context, ImageView imageView);

    public abstract InputStream getCubeData(Context context);

    public BaseLook(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public String getLookId() {
        return this.id;
    }

    public String getLookName() {
        return this.name;
    }

    public void setLookId(String str) {
        this.id = str;
    }

    public void setLookName(String str) {
        this.name = str;
    }

    public Bitmap getLookupBitmap() {
        int iFloor;
        byte[] bArr = new byte[this.mWidth * this.mHeight * 4];
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.mWidth, this.mHeight, Bitmap.Config.ARGB_8888);
        if (!getLookId().equals("0")) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(getCubeData(PremiereClipApplication.getContext())));
            try {
                bufferedReader.readLine();
                int i = 0;
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        String[] strArrSplit = line.split(" ");
                        float f2 = Float.parseFloat(strArrSplit[0]);
                        float f3 = Float.parseFloat(strArrSplit[1]);
                        float f4 = Float.parseFloat(strArrSplit[2]);
                        float fFloor = (float) Math.floor(((double) f2) * 256.0d);
                        float fFloor2 = (float) Math.floor(((double) f4) * 256.0d);
                        float fFloor3 = (float) Math.floor(((double) f3) * 256.0d);
                        float f5 = fFloor < 0.0f ? 0.0f : fFloor >= 256.0f ? 255.0f : fFloor;
                        float f6 = fFloor2 < 0.0f ? 0.0f : fFloor2 >= 256.0f ? 255.0f : fFloor2;
                        float f7 = fFloor3 < 0.0f ? 0.0f : fFloor3 >= 256.0f ? 255.0f : fFloor3;
                        int iFloor2 = (int) Math.floor(i / this.mHeight);
                        if (iFloor2 % 2 == 1) {
                            iFloor = ((iFloor2 * this.mHeight) + (((this.mWidth - 1) - ((int) Math.floor((i - r1) / this.mWidth))) * this.mWidth) + (i % this.mWidth)) * 4;
                        } else {
                            iFloor = i * 4;
                        }
                        bArr[iFloor] = (byte) f5;
                        bArr[iFloor + 1] = (byte) f7;
                        bArr[iFloor + 2] = (byte) f6;
                        bArr[iFloor + 3] = -1;
                        i++;
                    } else {
                        bitmapCreateBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(bArr));
                        return bitmapCreateBitmap;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        } else {
            return bitmapCreateBitmap;
        }
    }
}
