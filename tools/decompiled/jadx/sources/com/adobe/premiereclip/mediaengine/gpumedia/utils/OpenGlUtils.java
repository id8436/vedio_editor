package com.adobe.premiereclip.mediaengine.gpumedia.utils;

import android.graphics.Bitmap;
import android.hardware.Camera;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class OpenGlUtils {
    public static final int NO_TEXTURE = -1;

    public static int loadTexture(Bitmap bitmap, int i) {
        return loadTexture(bitmap, i, true);
    }

    public static int[] loadFrameBuffer(int i, int i2) {
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        GLES20.glGenTextures(1, iArr2, 0);
        GLES20.glBindTexture(3553, iArr2[0]);
        GLES20.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, null);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLES20.glBindFramebuffer(36160, iArr[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, iArr2[0], 0);
        GLES20.glBindTexture(3553, 0);
        GLES20.glBindFramebuffer(36160, 0);
        return new int[]{iArr2[0], iArr[0]};
    }

    public static int loadExternalTexture() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameterf(36197, 10241, 9729.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        return iArr[0];
    }

    public static int loadTexture(Bitmap bitmap, int i, boolean z) {
        int[] iArr = new int[1];
        if (i == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            if (bitmap != null) {
                GLUtils.texImage2D(3553, 0, bitmap, 0);
            }
        } else {
            GLES20.glBindTexture(3553, i);
            if (bitmap != null) {
                GLUtils.texSubImage2D(3553, 0, 0, 0, bitmap);
            }
            iArr[0] = i;
        }
        if (z && bitmap != null) {
            bitmap.recycle();
        }
        return iArr[0];
    }

    public static int loadTexture(IntBuffer intBuffer, Camera.Size size, int i) {
        int[] iArr = new int[1];
        if (i == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glTexImage2D(3553, 0, 6408, size.width, size.height, 0, 6408, 5121, intBuffer);
        } else {
            GLES20.glBindTexture(3553, i);
            GLES20.glTexSubImage2D(3553, 0, 0, 0, size.width, size.height, 6408, 5121, intBuffer);
            iArr[0] = i;
        }
        return iArr[0];
    }

    public static int loadTextureAsBitmap(IntBuffer intBuffer, Camera.Size size, int i) {
        return loadTexture(Bitmap.createBitmap(intBuffer.array(), size.width, size.height, Bitmap.Config.ARGB_8888), i);
    }

    public static int loadShader(String str, int i) {
        int[] iArr = new int[1];
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        Log.d("Load Shader Failed", "Compilation\n" + GLES20.glGetShaderInfoLog(iGlCreateShader));
        return 0;
    }

    public static int loadProgram(String str, String str2) {
        int[] iArr = new int[1];
        int iLoadShader = loadShader(str, 35633);
        if (iLoadShader == 0) {
            Log.d("Load Program", "Vertex Shader Failed");
            return 0;
        }
        int iLoadShader2 = loadShader(str2, 35632);
        if (iLoadShader2 == 0) {
            Log.d("Load Program", "Fragment Shader Failed");
            return 0;
        }
        int iGlCreateProgram = GLES20.glCreateProgram();
        GLES20.glAttachShader(iGlCreateProgram, iLoadShader);
        GLES20.glAttachShader(iGlCreateProgram, iLoadShader2);
        GLES20.glLinkProgram(iGlCreateProgram);
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] <= 0) {
            Log.d("Load Program", "Linking Failed");
            return 0;
        }
        GLES20.glDeleteShader(iLoadShader);
        GLES20.glDeleteShader(iLoadShader2);
        return iGlCreateProgram;
    }

    public static float rnd(float f2, float f3) {
        return (((float) Math.random()) * (f3 - f2)) + f2;
    }

    public static FloatBuffer createBuffer(float[] fArr) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer = byteBufferAllocateDirect.asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr);
        floatBufferAsFloatBuffer.position(0);
        return floatBufferAsFloatBuffer;
    }

    public static ShortBuffer createBuffer(short[] sArr) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(sArr.length * 2);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        ShortBuffer shortBufferAsShortBuffer = byteBufferAllocateDirect.asShortBuffer();
        shortBufferAsShortBuffer.put(sArr);
        shortBufferAsShortBuffer.position(0);
        return shortBufferAsShortBuffer;
    }

    public static void checkGlError(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            throw new RuntimeException(str + ": glError " + iGlGetError);
        }
    }

    public static int[] getGLBuffer(int i, int i2) {
        int[] iArr = new int[i * i2];
        IntBuffer intBufferWrap = IntBuffer.wrap(iArr);
        intBufferWrap.position(0);
        GLES20.glReadPixels(0, 0, i, i2, 6408, 5121, intBufferWrap);
        return iArr;
    }

    public static Bitmap getGLBitmap(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = iArr[(i3 * i) + i4];
                iArr2[(((i2 - i3) - 1) * i) + i4] = (i5 & (-16711936)) | ((i5 << 16) & 16711680) | ((i5 >> 16) & 255);
            }
        }
        return Bitmap.createBitmap(iArr2, i, i2, Bitmap.Config.ARGB_8888);
    }

    public static Bitmap getGLBitmapNonAlpha(int i, int i2) {
        int i3 = i * i2;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i3 * 4);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        GLES20.glReadPixels(0, 0, i, i2, 6408, 5121, byteBufferAllocateDirect);
        int[] iArr = new int[i3];
        byteBufferAllocateDirect.asIntBuffer().get(iArr);
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i4] = Integer.rotateRight(iArr[i4], 8);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
        bitmapCreateBitmap.setPixels(iArr, i3 - i, -i, 0, 0, i, i2);
        short[] sArr = new short[i3];
        ShortBuffer shortBufferWrap = ShortBuffer.wrap(sArr);
        bitmapCreateBitmap.copyPixelsToBuffer(shortBufferWrap);
        for (int i5 = 0; i5 < i3; i5++) {
            short s = sArr[i5];
            sArr[i5] = (short) (((s & 63488) >> 11) | ((s & 31) << 11) | (s & 2016));
        }
        shortBufferWrap.rewind();
        bitmapCreateBitmap.copyPixelsFromBuffer(shortBufferWrap);
        return bitmapCreateBitmap;
    }
}
