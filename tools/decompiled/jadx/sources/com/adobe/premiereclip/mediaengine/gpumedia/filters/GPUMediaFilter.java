package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.graphics.PointF;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import com.adobe.premiereclip.mediaengine.gpumedia.utils.OpenGlUtils;
import com.google.gdata.client.spreadsheet.ListQuery;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaFilter {
    public static final String NO_FILTER_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}";
    public static final String NO_FILTER_VERTEX_SHADER = "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}";
    private String mFragmentShader;
    protected int mGLAttribPosition;
    protected int mGLAttribTextureCoordinate;
    protected FloatBuffer mGLCubeBuffer;
    protected int mGLProgId;
    protected int mGLUniformTexture;
    protected GPUMediaTexture mGPUMediaTexture;
    private boolean mIsInitialized;
    protected final float[] mMVPMatrix;
    protected int mOutputHeight;
    protected int mOutputWidth;
    protected final float[] mProjectionMatrix;
    private final LinkedList<Runnable> mRunOnDraw;
    private final String mVertexShader;
    protected final float[] mViewMatrix;
    protected int muMVPMatrixHandle;
    protected float scale;
    protected int textureHeight;
    protected int textureWidth;
    protected float xOffset;
    protected float yOffset;

    public GPUMediaFilter() {
        this(NO_FILTER_VERTEX_SHADER, NO_FILTER_FRAGMENT_SHADER);
    }

    public GPUMediaFilter(String str, String str2) {
        this.mMVPMatrix = new float[16];
        this.mProjectionMatrix = new float[16];
        this.mViewMatrix = new float[16];
        this.mRunOnDraw = new LinkedList<>();
        this.mVertexShader = getFinalVertexShader(str);
        this.mFragmentShader = str2;
        this.mGLProgId = -100;
        this.textureWidth = -1;
        this.textureHeight = -1;
        this.mGLCubeBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.scale = 1.0f;
        this.xOffset = 0.0f;
        this.yOffset = 0.0f;
    }

    private String getFinalVertexShader(String str) {
        return ("uniform mat4 uMVPMatrix;\nattribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nvec4 pos;\nvec2 uv;\n \n" + str).replace("void main()\n{\n", "void main()\n{\n    pos = position * uMVPMatrix;\n    uv = inputTextureCoordinate.xy;\n");
    }

    public final void init() {
        if (!this.mIsInitialized) {
            this.mFragmentShader = isExternalOES() ? getFragmentShaderExternalOES() : this.mFragmentShader;
            onInit();
            this.mIsInitialized = true;
            onInitialized();
        }
    }

    public void setTextureXOffset(float f2) {
        if (this.xOffset != f2) {
            this.xOffset = f2;
            onSizeChanged();
        }
    }

    public void setTextureYOffset(float f2) {
        if (this.yOffset != f2) {
            this.yOffset = f2;
            onSizeChanged();
        }
    }

    public final GPUMediaTexture getGPUMediaTexture() {
        return this.mGPUMediaTexture;
    }

    protected void onInit() {
        this.mGLProgId = OpenGlUtils.loadProgram(this.mVertexShader, this.mFragmentShader);
        this.mGLAttribPosition = GLES20.glGetAttribLocation(this.mGLProgId, ListQuery.ORDERBY_POSITION);
        this.mGLUniformTexture = GLES20.glGetUniformLocation(this.mGLProgId, "inputImageTexture");
        this.mGLAttribTextureCoordinate = GLES20.glGetAttribLocation(this.mGLProgId, "inputTextureCoordinate");
        this.muMVPMatrixHandle = GLES20.glGetUniformLocation(this.mGLProgId, "uMVPMatrix");
    }

    public void setGPUMediaTexture(GPUMediaTexture gPUMediaTexture) {
        this.mGPUMediaTexture = gPUMediaTexture;
    }

    protected String getFragmentShaderExternalOES() {
        if (this.mGPUMediaTexture != null && this.mGPUMediaTexture.isExternalOES()) {
            this.mFragmentShader = this.mFragmentShader.replaceFirst("uniform sampler2D inputImageTexture;", "uniform samplerExternalOES inputImageTexture;");
        }
        return "#extension GL_OES_EGL_image_external : require\n" + this.mFragmentShader;
    }

    protected void onInitialized() {
    }

    public final void destroy() {
        this.mIsInitialized = false;
        this.mGPUMediaTexture = null;
        if (this.mGLProgId != -100) {
            GLES20.glDeleteProgram(this.mGLProgId);
            this.mGLProgId = -100;
        }
        onDestroy();
    }

    protected void onDestroy() {
    }

    public void onOutputSizeChanged(int i, int i2) {
        if (i != 0 && i2 != 0) {
            this.mOutputWidth = i;
            this.mOutputHeight = i2;
            float f2 = i;
            if (i2 == 0) {
                i2 = 1;
            }
            float f3 = f2 / i2;
            Matrix.frustumM(this.mProjectionMatrix, 0, -f3, f3, -1.0f, 1.0f, 3.0f, 7.0f);
            onSizeChanged();
        }
    }

    public void setTextureScale(float f2) {
        if (this.scale != f2) {
            this.scale = f2;
            onSizeChanged();
        }
    }

    private void onSizeChanged() {
        float[] fArr;
        if (this.mGPUMediaTexture != null) {
            this.textureWidth = this.mGPUMediaTexture.getWidth();
            this.textureHeight = this.mGPUMediaTexture.getHeight();
            float f2 = this.textureWidth / this.textureHeight;
            float f3 = this.mOutputWidth / this.mOutputHeight;
            if (f2 <= f3) {
                fArr = new float[]{((-f2) * this.scale) - this.xOffset, (-this.scale) - this.yOffset, (this.scale * f2) - this.xOffset, (-this.scale) - this.yOffset, ((-f2) * this.scale) - this.xOffset, this.scale - this.yOffset, (f2 * this.scale) - this.xOffset, this.scale - this.yOffset};
            } else {
                float f4 = (this.scale * f3) / f2;
                fArr = new float[]{((-f3) * this.scale) - this.xOffset, (-f4) - this.yOffset, (this.scale * f3) - this.xOffset, (-f4) - this.yOffset, ((-f3) * this.scale) - this.xOffset, f4 - this.yOffset, (f3 * this.scale) - this.xOffset, f4 - this.yOffset};
            }
            this.mGLCubeBuffer.clear();
            ((FloatBuffer) this.mGLCubeBuffer.position(0)).put(fArr).position(0);
        }
    }

    private void common() {
        GLES20.glUseProgram(this.mGLProgId);
        GLES20.glViewport(0, 0, this.mOutputWidth, this.mOutputHeight);
        if (this.textureWidth != this.mGPUMediaTexture.getWidth() || this.textureHeight != this.mGPUMediaTexture.getHeight()) {
            onSizeChanged();
        }
        runPendingOnDrawTasks();
        if (this.mIsInitialized) {
            Matrix.setLookAtM(this.mViewMatrix, 0, 0.0f, 0.0f, -3.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
            Matrix.multiplyMM(this.mMVPMatrix, 0, this.mProjectionMatrix, 0, this.mViewMatrix, 0);
            this.mGLCubeBuffer.position(0);
            GLES20.glVertexAttribPointer(this.mGLAttribPosition, 2, 5126, false, 0, (Buffer) this.mGLCubeBuffer);
            GLES20.glEnableVertexAttribArray(this.mGLAttribPosition);
        }
    }

    public void updateSurface() {
        if (isExternalOES()) {
            this.mGPUMediaTexture.update();
        }
    }

    protected void textureDraw() {
        GLES20.glActiveTexture(33984);
        this.mGPUMediaTexture.onDraw(this.mGLAttribTextureCoordinate);
        GLES20.glUniform1i(this.mGLUniformTexture, 0);
    }

    protected void onDraw() {
        if (this.mGPUMediaTexture != null) {
            common();
            textureDraw();
            GLES20.glUniformMatrix4fv(this.muMVPMatrixHandle, 1, false, this.mMVPMatrix, 0);
            onDrawArraysPre();
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisableVertexAttribArray(this.mGLAttribPosition);
            GLES20.glDisableVertexAttribArray(this.mGLAttribTextureCoordinate);
            onDrawArraysPost();
            if (this.mGPUMediaTexture != null) {
                GLES20.glBindTexture(this.mGPUMediaTexture.getTextureTarget(), 0);
            }
        }
    }

    public void onDraw(GPUMediaTexture gPUMediaTexture) {
        if (gPUMediaTexture != null) {
            gPUMediaTexture.bindFrameBuffer();
        }
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClear(16640);
        onDraw();
        if (gPUMediaTexture != null) {
            GLES20.glBindFramebuffer(36160, 0);
        }
    }

    protected void onDrawArraysPost() {
    }

    protected void onDrawArraysPre() {
    }

    protected void runPendingOnDrawTasks() {
        synchronized (this.mRunOnDraw) {
            while (!this.mRunOnDraw.isEmpty()) {
                this.mRunOnDraw.removeFirst().run();
            }
        }
    }

    public boolean isInitialized() {
        return this.mIsInitialized;
    }

    public int getOutputWidth() {
        return this.mOutputWidth;
    }

    public int getOutputHeight() {
        return this.mOutputHeight;
    }

    public int getProgram() {
        return this.mGLProgId;
    }

    protected boolean isExternalOES() {
        return this.mGPUMediaTexture != null && this.mGPUMediaTexture.isExternalOES();
    }

    protected void setInteger(final int i, final int i2) {
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter.1
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniform1i(i, i2);
            }
        });
    }

    protected void setFloat(final int i, final float f2) {
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter.2
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniform1f(i, f2);
            }
        });
    }

    protected void setFloatVec2(final int i, final float[] fArr) {
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter.3
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniform2fv(i, 1, FloatBuffer.wrap(fArr));
            }
        });
    }

    protected void setFloatVec3(final int i, final float[] fArr) {
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter.4
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniform3fv(i, 1, FloatBuffer.wrap(fArr));
            }
        });
    }

    protected void setFloatVec4(final int i, final float[] fArr) {
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter.5
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniform4fv(i, 1, FloatBuffer.wrap(fArr));
            }
        });
    }

    protected void setFloatArray(final int i, final float[] fArr) {
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter.6
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniform1fv(i, fArr.length, FloatBuffer.wrap(fArr));
            }
        });
    }

    protected void setPoint(final int i, final PointF pointF) {
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter.7
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniform2fv(i, 1, new float[]{pointF.x, pointF.y}, 0);
            }
        });
    }

    protected void setUniformMatrix3f(final int i, final float[] fArr) {
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter.8
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniformMatrix3fv(i, 1, false, fArr, 0);
            }
        });
    }

    protected void setUniformMatrix4f(final int i, final float[] fArr) {
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter.9
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniformMatrix4fv(i, 1, false, fArr, 0);
            }
        });
    }

    protected void runOnDraw(Runnable runnable) {
        synchronized (this.mRunOnDraw) {
            this.mRunOnDraw.addLast(runnable);
        }
    }
}
