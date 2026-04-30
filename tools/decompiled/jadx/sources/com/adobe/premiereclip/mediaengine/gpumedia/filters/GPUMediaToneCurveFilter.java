package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.graphics.Point;
import android.graphics.PointF;
import android.opengl.GLES20;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaToneCurveFilter extends GPUMediaFilter {
    public static final String TONE_CURVE_FRAGMENT_SHADER = " varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }";
    private PointF[] mBlueControlPoints;
    private ArrayList<Float> mBlueCurve;
    private PointF[] mGreenControlPoints;
    private ArrayList<Float> mGreenCurve;
    private PointF[] mRedControlPoints;
    private ArrayList<Float> mRedCurve;
    private PointF[] mRgbCompositeControlPoints;
    private ArrayList<Float> mRgbCompositeCurve;
    private int[] mToneCurveTexture;
    private int mToneCurveTextureUniformLocation;

    public GPUMediaToneCurveFilter() {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, TONE_CURVE_FRAGMENT_SHADER);
        this.mToneCurveTexture = new int[]{-1};
        PointF[] pointFArr = {new PointF(0.0f, 0.0f), new PointF(0.5f, 0.5f), new PointF(1.0f, 1.0f)};
        this.mRgbCompositeControlPoints = pointFArr;
        this.mRedControlPoints = pointFArr;
        this.mGreenControlPoints = pointFArr;
        this.mBlueControlPoints = pointFArr;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mToneCurveTextureUniformLocation = GLES20.glGetUniformLocation(getProgram(), "toneCurveTexture");
        GLES20.glActiveTexture(33987);
        GLES20.glGenTextures(1, this.mToneCurveTexture, 0);
        GLES20.glBindTexture(3553, this.mToneCurveTexture[0]);
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, 10240, 9729);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setRgbCompositeControlPoints(this.mRgbCompositeControlPoints);
        setRedControlPoints(this.mRedControlPoints);
        setGreenControlPoints(this.mGreenControlPoints);
        setBlueControlPoints(this.mBlueControlPoints);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onDrawArraysPre() {
        if (this.mToneCurveTexture[0] != -1) {
            GLES20.glActiveTexture(33987);
            GLES20.glBindTexture(3553, this.mToneCurveTexture[0]);
            GLES20.glUniform1i(this.mToneCurveTextureUniformLocation, 3);
        }
    }

    public void setFromCurveFileInputStream(InputStream inputStream) {
        try {
            readShort(inputStream);
            short s = readShort(inputStream);
            ArrayList arrayList = new ArrayList(s);
            for (int i = 0; i < s; i++) {
                int i2 = readShort(inputStream);
                PointF[] pointFArr = new PointF[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    pointFArr[i3] = new PointF(readShort(inputStream) * 0.003921569f, readShort(inputStream) * 0.003921569f);
                }
                arrayList.add(pointFArr);
            }
            inputStream.close();
            this.mRgbCompositeControlPoints = (PointF[]) arrayList.get(0);
            this.mRedControlPoints = (PointF[]) arrayList.get(1);
            this.mGreenControlPoints = (PointF[]) arrayList.get(2);
            this.mBlueControlPoints = (PointF[]) arrayList.get(3);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private short readShort(InputStream inputStream) throws IOException {
        return (short) ((inputStream.read() << 8) | inputStream.read());
    }

    public void setRgbCompositeControlPoints(PointF[] pointFArr) {
        this.mRgbCompositeControlPoints = pointFArr;
        this.mRgbCompositeCurve = createSplineCurve(this.mRgbCompositeControlPoints);
        updateToneCurveTexture();
    }

    public void setRedControlPoints(PointF[] pointFArr) {
        this.mRedControlPoints = pointFArr;
        this.mRedCurve = createSplineCurve(this.mRedControlPoints);
        updateToneCurveTexture();
    }

    public void setGreenControlPoints(PointF[] pointFArr) {
        this.mGreenControlPoints = pointFArr;
        this.mGreenCurve = createSplineCurve(this.mGreenControlPoints);
        updateToneCurveTexture();
    }

    public void setBlueControlPoints(PointF[] pointFArr) {
        this.mBlueControlPoints = pointFArr;
        this.mBlueCurve = createSplineCurve(this.mBlueControlPoints);
        updateToneCurveTexture();
    }

    private void updateToneCurveTexture() {
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaToneCurveFilter.1
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glActiveTexture(33987);
                GLES20.glBindTexture(3553, GPUMediaToneCurveFilter.this.mToneCurveTexture[0]);
                if (GPUMediaToneCurveFilter.this.mRedCurve.size() >= 256 && GPUMediaToneCurveFilter.this.mGreenCurve.size() >= 256 && GPUMediaToneCurveFilter.this.mBlueCurve.size() >= 256 && GPUMediaToneCurveFilter.this.mRgbCompositeCurve.size() >= 256) {
                    byte[] bArr = new byte[1024];
                    for (int i = 0; i < 256; i++) {
                        bArr[(i * 4) + 2] = (byte) (((int) Math.min(Math.max(((Float) GPUMediaToneCurveFilter.this.mRgbCompositeCurve.get(i)).floatValue() + i + ((Float) GPUMediaToneCurveFilter.this.mBlueCurve.get(i)).floatValue(), 0.0f), 255.0f)) & 255);
                        bArr[(i * 4) + 1] = (byte) (((int) Math.min(Math.max(((Float) GPUMediaToneCurveFilter.this.mRgbCompositeCurve.get(i)).floatValue() + i + ((Float) GPUMediaToneCurveFilter.this.mGreenCurve.get(i)).floatValue(), 0.0f), 255.0f)) & 255);
                        bArr[i * 4] = (byte) (((int) Math.min(Math.max(((Float) GPUMediaToneCurveFilter.this.mRgbCompositeCurve.get(i)).floatValue() + i + ((Float) GPUMediaToneCurveFilter.this.mRedCurve.get(i)).floatValue(), 0.0f), 255.0f)) & 255);
                        bArr[(i * 4) + 3] = -1;
                    }
                    GLES20.glTexImage2D(3553, 0, 6408, 256, 1, 0, 6408, 5121, ByteBuffer.wrap(bArr));
                }
            }
        });
    }

    private ArrayList<Float> createSplineCurve(PointF[] pointFArr) {
        if (pointFArr == null || pointFArr.length <= 0) {
            return null;
        }
        PointF[] pointFArr2 = (PointF[]) pointFArr.clone();
        Arrays.sort(pointFArr2, new Comparator<PointF>() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaToneCurveFilter.2
            @Override // java.util.Comparator
            public int compare(PointF pointF, PointF pointF2) {
                if (pointF.x < pointF2.x) {
                    return -1;
                }
                if (pointF.x > pointF2.x) {
                    return 1;
                }
                return 0;
            }
        });
        Point[] pointArr = new Point[pointFArr2.length];
        for (int i = 0; i < pointFArr.length; i++) {
            PointF pointF = pointFArr2[i];
            pointArr[i] = new Point((int) (pointF.x * 255.0f), (int) (pointF.y * 255.0f));
        }
        ArrayList<Point> arrayListCreateSplineCurve2 = createSplineCurve2(pointArr);
        Point point = arrayListCreateSplineCurve2.get(0);
        if (point.x > 0) {
            for (int i2 = point.x; i2 >= 0; i2--) {
                arrayListCreateSplineCurve2.add(0, new Point(i2, 0));
            }
        }
        Point point2 = arrayListCreateSplineCurve2.get(arrayListCreateSplineCurve2.size() - 1);
        if (point2.x < 255) {
            for (int i3 = point2.x + 1; i3 <= 255; i3++) {
                arrayListCreateSplineCurve2.add(new Point(i3, 255));
            }
        }
        ArrayList<Float> arrayList = new ArrayList<>(arrayListCreateSplineCurve2.size());
        for (Point point3 : arrayListCreateSplineCurve2) {
            Point point4 = new Point(point3.x, point3.x);
            float fSqrt = (float) Math.sqrt(Math.pow(point4.x - point3.x, 2.0d) + Math.pow(point4.y - point3.y, 2.0d));
            arrayList.add(Float.valueOf(point4.y > point3.y ? -fSqrt : fSqrt));
        }
        return arrayList;
    }

    private ArrayList<Point> createSplineCurve2(Point[] pointArr) {
        ArrayList<Double> arrayListCreateSecondDerivative = createSecondDerivative(pointArr);
        int size = arrayListCreateSecondDerivative.size();
        if (size < 1) {
            return null;
        }
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = arrayListCreateSecondDerivative.get(i).doubleValue();
        }
        ArrayList<Point> arrayList = new ArrayList<>(size + 1);
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= size - 1) {
                break;
            }
            Point point = pointArr[i3];
            Point point2 = pointArr[i3 + 1];
            for (int i4 = point.x; i4 < point2.x; i4++) {
                double d2 = ((double) (i4 - point.x)) / ((double) (point2.x - point.x));
                double d3 = 1.0d - d2;
                double d4 = point2.x - point.x;
                double d5 = ((((((d2 * d2) * d2) - d2) * dArr[i3 + 1]) + ((((d3 * d3) * d3) - d3) * dArr[i3])) * ((d4 * d4) / 6.0d)) + (((double) point.y) * d3) + (((double) point2.y) * d2);
                if (d5 > 255.0d) {
                    d5 = 255.0d;
                } else if (d5 < 0.0d) {
                    d5 = 0.0d;
                }
                arrayList.add(new Point(i4, (int) Math.round(d5)));
            }
            i2 = i3 + 1;
        }
        if (arrayList.size() == 255) {
            arrayList.add(pointArr[pointArr.length - 1]);
        }
        return arrayList;
    }

    private ArrayList<Double> createSecondDerivative(Point[] pointArr) {
        int length = pointArr.length;
        if (length <= 1) {
            return null;
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, 3);
        double[] dArr2 = new double[length];
        dArr[0][1] = 1.0d;
        dArr[0][0] = 0.0d;
        dArr[0][2] = 0.0d;
        for (int i = 1; i < length - 1; i++) {
            Point point = pointArr[i - 1];
            Point point2 = pointArr[i];
            Point point3 = pointArr[i + 1];
            dArr[i][0] = ((double) (point2.x - point.x)) / 6.0d;
            dArr[i][1] = ((double) (point3.x - point.x)) / 3.0d;
            dArr[i][2] = ((double) (point3.x - point2.x)) / 6.0d;
            dArr2[i] = (((double) (point3.y - point2.y)) / ((double) (point3.x - point2.x))) - (((double) (point2.y - point.y)) / ((double) (point2.x - point.x)));
        }
        dArr2[0] = 0.0d;
        dArr2[length - 1] = 0.0d;
        dArr[length - 1][1] = 1.0d;
        dArr[length - 1][0] = 0.0d;
        dArr[length - 1][2] = 0.0d;
        for (int i2 = 1; i2 < length; i2++) {
            double d2 = dArr[i2][0] / dArr[i2 - 1][1];
            double[] dArr3 = dArr[i2];
            dArr3[1] = dArr3[1] - (dArr[i2 - 1][2] * d2);
            dArr[i2][0] = 0.0d;
            dArr2[i2] = dArr2[i2] - (d2 * dArr2[i2 - 1]);
        }
        for (int i3 = length - 2; i3 >= 0; i3--) {
            double d3 = dArr[i3][2] / dArr[i3 + 1][1];
            double[] dArr4 = dArr[i3];
            dArr4[1] = dArr4[1] - (dArr[i3 + 1][0] * d3);
            dArr[i3][2] = 0.0d;
            dArr2[i3] = dArr2[i3] - (d3 * dArr2[i3 + 1]);
        }
        ArrayList<Double> arrayList = new ArrayList<>(length);
        for (int i4 = 0; i4 < length; i4++) {
            arrayList.add(Double.valueOf(dArr2[i4] / dArr[i4][1]));
        }
        return arrayList;
    }
}
