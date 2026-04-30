package com.adobe.customextractor.FrameResources;

import android.opengl.GLES20;
import android.util.Log;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.google.gdata.client.spreadsheet.ListQuery;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class Filter {
    public static final String NO_FILTER_FRAGMENT_SHADER = "#extension GL_OES_EGL_image_external : require\nvarying highp vec2 textureCoordinate;\nuniform samplerExternalOES inputImageTexture;\nuniform highp float crop_bottom;\nuniform highp float height;\nuniform highp float crop_right;\nuniform highp float width;\nvoid main()\n{\n       //gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n       gl_FragColor = texture2D(inputImageTexture, vec2(textureCoordinate.x * crop_right / width, textureCoordinate.y * crop_bottom / height));\n}";
    public static final String NO_FILTER_VERTEX_SHADER = "varying vec2 textureCoordinate;\nattribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate;\n}";
    private float crop_bottom;
    private float crop_right;
    private float height;
    protected int mGLAttribPosition;
    protected int mGLAttribTextureCoordinate;
    private int mGLUniformCropBottomLocation;
    private int mGLUniformCropRightLocation;
    private int mGLUniformHeightLocation;
    protected int mGLUniformTexture;
    private int mGLUniformWidthLocation;
    private int textureHandle;
    private float width;
    private int mGLProgId = -100;
    protected FloatBuffer mGLCubeBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
    protected final FloatBuffer mGLTextureBuffer = ByteBuffer.allocateDirect(TextureRotationUtil.TEXTURE_NO_ROTATION.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();

    public void onInit(int i, int i2, int i3, int i4, int i5) {
        this.mGLProgId = OpenGl.loadProgram(NO_FILTER_VERTEX_SHADER, NO_FILTER_FRAGMENT_SHADER);
        this.mGLAttribPosition = GLES20.glGetAttribLocation(this.mGLProgId, ListQuery.ORDERBY_POSITION);
        this.mGLUniformTexture = GLES20.glGetUniformLocation(this.mGLProgId, "inputImageTexture");
        this.mGLAttribTextureCoordinate = GLES20.glGetAttribLocation(this.mGLProgId, "inputTextureCoordinate");
        this.mGLUniformWidthLocation = GLES20.glGetUniformLocation(this.mGLProgId, "width");
        this.mGLUniformCropRightLocation = GLES20.glGetUniformLocation(this.mGLProgId, "crop_right");
        this.mGLUniformCropBottomLocation = GLES20.glGetUniformLocation(this.mGLProgId, "crop_bottom");
        this.mGLUniformHeightLocation = GLES20.glGetUniformLocation(this.mGLProgId, "height");
        this.width = i;
        this.height = i2;
        this.crop_right = i3;
        this.crop_bottom = i4;
        setCubeBuffer();
        setTextureBuffer(Rotation.fromInt(i5));
    }

    public void draw(int i) {
        this.textureHandle = i;
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClear(16640);
        onDraw();
    }

    private void setCrop() {
        Log.i("ThumbLog", "Setting bcrop " + this.crop_bottom + " rcrop " + this.crop_right);
        GLES20.glUniform1f(this.mGLUniformCropBottomLocation, this.crop_bottom);
        GLES20.glUniform1f(this.mGLUniformCropRightLocation, this.crop_right);
    }

    private void setSize() {
        Log.i("ThumbLog", "Setting height " + this.height + " width " + this.width);
        GLES20.glUniform1f(this.mGLUniformHeightLocation, this.height);
        GLES20.glUniform1f(this.mGLUniformWidthLocation, this.width);
    }

    private void onDraw() {
        GLES20.glUseProgram(this.mGLProgId);
        this.mGLCubeBuffer.position(0);
        GLES20.glVertexAttribPointer(this.mGLAttribPosition, 2, 5126, false, 0, (Buffer) this.mGLCubeBuffer);
        GLES20.glEnableVertexAttribArray(this.mGLAttribPosition);
        setCrop();
        setSize();
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, this.textureHandle);
        this.mGLTextureBuffer.position(0);
        GLES20.glVertexAttribPointer(this.mGLAttribTextureCoordinate, 2, 5126, false, 0, (Buffer) this.mGLTextureBuffer);
        GLES20.glEnableVertexAttribArray(this.mGLAttribTextureCoordinate);
        GLES20.glUniform1i(this.mGLUniformTexture, 0);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glDisableVertexAttribArray(this.mGLAttribPosition);
        GLES20.glDisableVertexAttribArray(this.mGLAttribTextureCoordinate);
        GLES20.glFinish();
    }

    public void destroy() {
        if (this.mGLProgId != -100) {
            GLES20.glDeleteProgram(this.mGLProgId);
            this.mGLProgId = -100;
        }
    }

    private void setCubeBuffer() {
        ((FloatBuffer) this.mGLCubeBuffer.position(0)).put(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f}).position(0);
    }

    private void setTextureBuffer(Rotation rotation) {
        boolean z = true;
        boolean z2 = rotation == Rotation.NORMAL || rotation == Rotation.ROTATION_180;
        if (rotation != Rotation.ROTATION_90 && rotation != Rotation.ROTATION_270) {
            z = false;
        }
        this.mGLTextureBuffer.put(TextureRotationUtil.getRotation(rotation, z, z2)).position(0);
    }

    public class TextureRotationUtil {
        public static final float[] TEXTURE_NO_ROTATION = {0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
        public static final float[] TEXTURE_ROTATED_90 = {1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f};
        public static final float[] TEXTURE_ROTATED_180 = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};
        public static final float[] TEXTURE_ROTATED_270 = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};

        private TextureRotationUtil() {
        }

        public static float[] getRotation(Rotation rotation, boolean z, boolean z2) {
            float[] fArr;
            switch (rotation) {
                case ROTATION_90:
                    fArr = TEXTURE_ROTATED_90;
                    break;
                case ROTATION_180:
                    fArr = TEXTURE_ROTATED_180;
                    break;
                case ROTATION_270:
                    fArr = TEXTURE_ROTATED_270;
                    break;
                default:
                    fArr = TEXTURE_NO_ROTATION;
                    break;
            }
            float[] fArr2 = z ? new float[]{flip(fArr[0]), fArr[1], flip(fArr[2]), fArr[3], flip(fArr[4]), fArr[5], flip(fArr[6]), fArr[7]} : fArr;
            return z2 ? new float[]{fArr2[0], flip(fArr2[1]), fArr2[2], flip(fArr2[3]), fArr2[4], flip(fArr2[5]), fArr2[6], flip(fArr2[7])} : fArr2;
        }

        private static float flip(float f2) {
            return f2 == 0.0f ? 1.0f : 0.0f;
        }
    }

    public enum Rotation {
        NORMAL,
        ROTATION_90,
        ROTATION_180,
        ROTATION_270;

        public int asInt() {
            switch (this) {
                case ROTATION_90:
                    return 90;
                case ROTATION_180:
                    return 180;
                case ROTATION_270:
                    return 270;
                case NORMAL:
                    return 0;
                default:
                    throw new IllegalStateException("Unknown Rotation!");
            }
        }

        public static Rotation fromInt(int i) {
            switch (i) {
                case 0:
                    return NORMAL;
                case 90:
                    return ROTATION_90;
                case 180:
                    return ROTATION_180;
                case 270:
                    return ROTATION_270;
                case Sequence.PLAYBACK_HEIGHT /* 360 */:
                    return NORMAL;
                default:
                    throw new IllegalStateException(i + " is an unknown rotation. Needs to be either 0, 90, 180 or 270!");
            }
        }
    }
}
