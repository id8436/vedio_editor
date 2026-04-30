package android.support.v4.graphics;

import android.graphics.Path;
import android.support.annotation.RestrictTo;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class PathParser {
    private static final String LOGTAG = "PathParser";

    static float[] copyOfRange(float[] fArr, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i < 0 || i > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = i2 - i;
        int iMin = Math.min(i3, length - i);
        float[] fArr2 = new float[i3];
        System.arraycopy(fArr, i, fArr2, 0, iMin);
        return fArr2;
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] pathDataNodeArrCreateNodesFromPathData = createNodesFromPathData(str);
        if (pathDataNodeArrCreateNodesFromPathData != null) {
            try {
                PathDataNode.nodesToPath(pathDataNodeArrCreateNodesFromPathData, path);
                return path;
            } catch (RuntimeException e2) {
                throw new RuntimeException("Error in parsing " + str, e2);
            }
        }
        return null;
    }

    public static PathDataNode[] createNodesFromPathData(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int iNextStart = nextStart(str, i);
            String strTrim = str.substring(i2, iNextStart).trim();
            if (strTrim.length() > 0) {
                addNode(arrayList, strTrim.charAt(0), getFloats(strTrim));
            }
            i = iNextStart + 1;
            i2 = iNextStart;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            addNode(arrayList, str.charAt(i2), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            pathDataNodeArr2[i] = new PathDataNode(pathDataNodeArr[i]);
        }
        return pathDataNodeArr2;
    }

    public static boolean canMorph(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            if (pathDataNodeArr[i].mType != pathDataNodeArr2[i].mType || pathDataNodeArr[i].mParams.length != pathDataNodeArr2[i].mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static void updateNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int i = 0; i < pathDataNodeArr2.length; i++) {
            pathDataNodeArr[i].mType = pathDataNodeArr2[i].mType;
            for (int i2 = 0; i2 < pathDataNodeArr2[i].mParams.length; i2++) {
                pathDataNodeArr[i].mParams[i2] = pathDataNodeArr2[i].mParams[i2];
            }
        }
    }

    private static int nextStart(String str, int i) {
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (((cCharAt - 'A') * (cCharAt - 'Z') <= 0 || (cCharAt - 'a') * (cCharAt - 'z') <= 0) && cCharAt != 'e' && cCharAt != 'E') {
                break;
            }
            i++;
        }
        return i;
    }

    private static void addNode(ArrayList<PathDataNode> arrayList, char c2, float[] fArr) {
        arrayList.add(new PathDataNode(c2, fArr));
    }

    class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;

        ExtractFloatResult() {
        }
    }

    private static float[] getFloats(String str) {
        int i;
        int i2 = 0;
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int i3 = 1;
            while (i3 < length) {
                extract(str, i3, extractFloatResult);
                int i4 = extractFloatResult.mEndPosition;
                if (i3 < i4) {
                    i = i2 + 1;
                    fArr[i2] = Float.parseFloat(str.substring(i3, i4));
                } else {
                    i = i2;
                }
                if (extractFloatResult.mEndWithNegOrDot) {
                    i3 = i4;
                    i2 = i;
                } else {
                    i3 = i4 + 1;
                    i2 = i;
                }
            }
            return copyOfRange(fArr, 0, i2);
        } catch (NumberFormatException e2) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e2);
        }
    }

    private static void extract(String str, int i, ExtractFloatResult extractFloatResult) {
        extractFloatResult.mEndWithNegOrDot = false;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (int i2 = i; i2 < str.length(); i2++) {
            switch (str.charAt(i2)) {
                case ' ':
                case ',':
                    z = false;
                    z3 = true;
                    break;
                case '-':
                    if (i2 == i || z) {
                        z = false;
                    } else {
                        extractFloatResult.mEndWithNegOrDot = true;
                        z = false;
                        z3 = true;
                    }
                    break;
                case '.':
                    if (z2) {
                        extractFloatResult.mEndWithNegOrDot = true;
                        z = false;
                        z3 = true;
                    } else {
                        z = false;
                        z2 = true;
                    }
                    break;
                case 'E':
                case 'e':
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z3) {
                extractFloatResult.mEndPosition = i2;
            }
        }
        extractFloatResult.mEndPosition = i2;
    }

    public class PathDataNode {

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public float[] mParams;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public char mType;

        PathDataNode(char c2, float[] fArr) {
            this.mType = c2;
            this.mParams = fArr;
        }

        PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            this.mParams = PathParser.copyOfRange(pathDataNode.mParams, 0, pathDataNode.mParams.length);
        }

        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            float[] fArr = new float[6];
            char c2 = 'm';
            for (int i = 0; i < pathDataNodeArr.length; i++) {
                addCommand(path, fArr, c2, pathDataNodeArr[i].mType, pathDataNodeArr[i].mParams);
                c2 = pathDataNodeArr[i].mType;
            }
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f2) {
            for (int i = 0; i < pathDataNode.mParams.length; i++) {
                this.mParams[i] = (pathDataNode.mParams[i] * (1.0f - f2)) + (pathDataNode2.mParams[i] * f2);
            }
        }

        private static void addCommand(Path path, float[] fArr, char c2, char c3, float[] fArr2) {
            int i;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14 = fArr[0];
            float f15 = fArr[1];
            float f16 = fArr[2];
            float f17 = fArr[3];
            float f18 = fArr[4];
            float f19 = fArr[5];
            switch (c3) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                    i = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f18, f19);
                    f17 = f19;
                    f16 = f18;
                    f15 = f19;
                    f14 = f18;
                    i = 2;
                    break;
                default:
                    i = 2;
                    break;
            }
            int i2 = 0;
            float f20 = f19;
            float f21 = f18;
            float f22 = f15;
            float f23 = f14;
            while (i2 < fArr2.length) {
                switch (c3) {
                    case 'A':
                        drawArc(path, f23, f22, fArr2[i2 + 5], fArr2[i2 + 6], fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                        float f24 = fArr2[i2 + 5];
                        float f25 = fArr2[i2 + 6];
                        f2 = f20;
                        f3 = f21;
                        f4 = f24;
                        f5 = f25;
                        f6 = f24;
                        f7 = f25;
                        break;
                    case 'C':
                        path.cubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3], fArr2[i2 + 4], fArr2[i2 + 5]);
                        float f26 = fArr2[i2 + 4];
                        float f27 = fArr2[i2 + 5];
                        f4 = fArr2[i2 + 2];
                        f5 = f27;
                        f6 = f26;
                        f2 = f20;
                        f3 = f21;
                        f7 = fArr2[i2 + 3];
                        break;
                    case 'H':
                        path.lineTo(fArr2[i2 + 0], f22);
                        f2 = f20;
                        f4 = f16;
                        f5 = f22;
                        f6 = fArr2[i2 + 0];
                        f7 = f17;
                        f3 = f21;
                        break;
                    case 'L':
                        path.lineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        float f28 = fArr2[i2 + 0];
                        f4 = f16;
                        f5 = fArr2[i2 + 1];
                        f6 = f28;
                        f2 = f20;
                        f3 = f21;
                        f7 = f17;
                        break;
                    case 'M':
                        f3 = fArr2[i2 + 0];
                        f2 = fArr2[i2 + 1];
                        if (i2 > 0) {
                            path.lineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f4 = f16;
                            f5 = f2;
                            f6 = f3;
                            f2 = f20;
                            f3 = f21;
                            f7 = f17;
                        } else {
                            path.moveTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f4 = f16;
                            f5 = f2;
                            f6 = f3;
                            f7 = f17;
                        }
                        break;
                    case 'Q':
                        path.quadTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f29 = fArr2[i2 + 0];
                        float f30 = fArr2[i2 + 1];
                        float f31 = fArr2[i2 + 2];
                        f4 = f29;
                        f5 = fArr2[i2 + 3];
                        f6 = f31;
                        f2 = f20;
                        f3 = f21;
                        f7 = f30;
                        break;
                    case 'S':
                        if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S') {
                            f10 = (2.0f * f23) - f16;
                            f11 = (2.0f * f22) - f17;
                        } else {
                            f11 = f22;
                            f10 = f23;
                        }
                        path.cubicTo(f10, f11, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f32 = fArr2[i2 + 0];
                        float f33 = fArr2[i2 + 1];
                        float f34 = fArr2[i2 + 2];
                        f4 = f32;
                        f5 = fArr2[i2 + 3];
                        f6 = f34;
                        f2 = f20;
                        f3 = f21;
                        f7 = f33;
                        break;
                    case 'T':
                        if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T') {
                            f23 = (2.0f * f23) - f16;
                            f22 = (2.0f * f22) - f17;
                        }
                        path.quadTo(f23, f22, fArr2[i2 + 0], fArr2[i2 + 1]);
                        float f35 = fArr2[i2 + 0];
                        f7 = f22;
                        f4 = f23;
                        f5 = fArr2[i2 + 1];
                        f6 = f35;
                        f2 = f20;
                        f3 = f21;
                        break;
                    case 'V':
                        path.lineTo(f23, fArr2[i2 + 0]);
                        f3 = f21;
                        f4 = f16;
                        f5 = fArr2[i2 + 0];
                        f6 = f23;
                        f7 = f17;
                        f2 = f20;
                        break;
                    case 'a':
                        drawArc(path, f23, f22, fArr2[i2 + 5] + f23, fArr2[i2 + 6] + f22, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                        float f36 = f23 + fArr2[i2 + 5];
                        float f37 = fArr2[i2 + 6] + f22;
                        f2 = f20;
                        f3 = f21;
                        f4 = f36;
                        f5 = f37;
                        f6 = f36;
                        f7 = f37;
                        break;
                    case 'c':
                        path.rCubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3], fArr2[i2 + 4], fArr2[i2 + 5]);
                        float f38 = f23 + fArr2[i2 + 2];
                        float f39 = fArr2[i2 + 3] + f22;
                        float f40 = f23 + fArr2[i2 + 4];
                        f4 = f38;
                        f5 = fArr2[i2 + 5] + f22;
                        f6 = f40;
                        f2 = f20;
                        f3 = f21;
                        f7 = f39;
                        break;
                    case 'h':
                        path.rLineTo(fArr2[i2 + 0], 0.0f);
                        f2 = f20;
                        f4 = f16;
                        f5 = f22;
                        f6 = f23 + fArr2[i2 + 0];
                        f7 = f17;
                        f3 = f21;
                        break;
                    case 'l':
                        path.rLineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        float f41 = f23 + fArr2[i2 + 0];
                        f4 = f16;
                        f5 = fArr2[i2 + 1] + f22;
                        f6 = f41;
                        f2 = f20;
                        f3 = f21;
                        f7 = f17;
                        break;
                    case 'm':
                        f3 = f23 + fArr2[i2 + 0];
                        f2 = fArr2[i2 + 1] + f22;
                        if (i2 > 0) {
                            path.rLineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f4 = f16;
                            f5 = f2;
                            f6 = f3;
                            f2 = f20;
                            f3 = f21;
                            f7 = f17;
                        } else {
                            path.rMoveTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f4 = f16;
                            f5 = f2;
                            f6 = f3;
                            f7 = f17;
                        }
                        break;
                    case 'q':
                        path.rQuadTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f42 = f23 + fArr2[i2 + 0];
                        float f43 = fArr2[i2 + 1] + f22;
                        float f44 = f23 + fArr2[i2 + 2];
                        f4 = f42;
                        f5 = fArr2[i2 + 3] + f22;
                        f6 = f44;
                        f2 = f20;
                        f3 = f21;
                        f7 = f43;
                        break;
                    case 's':
                        if (c2 != 'c' && c2 != 's' && c2 != 'C' && c2 != 'S') {
                            f13 = 0.0f;
                            f12 = 0.0f;
                        } else {
                            f12 = f23 - f16;
                            f13 = f22 - f17;
                        }
                        path.rCubicTo(f12, f13, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f45 = f23 + fArr2[i2 + 0];
                        float f46 = fArr2[i2 + 1] + f22;
                        float f47 = f23 + fArr2[i2 + 2];
                        f4 = f45;
                        f5 = fArr2[i2 + 3] + f22;
                        f6 = f47;
                        f2 = f20;
                        f3 = f21;
                        f7 = f46;
                        break;
                    case 't':
                        if (c2 != 'q' && c2 != 't' && c2 != 'Q' && c2 != 'T') {
                            f9 = 0.0f;
                            f8 = 0.0f;
                        } else {
                            f8 = f23 - f16;
                            f9 = f22 - f17;
                        }
                        path.rQuadTo(f8, f9, fArr2[i2 + 0], fArr2[i2 + 1]);
                        float f48 = f23 + fArr2[i2 + 0];
                        f4 = f23 + f8;
                        f5 = fArr2[i2 + 1] + f22;
                        f6 = f48;
                        f2 = f20;
                        f3 = f21;
                        f7 = f9 + f22;
                        break;
                    case 'v':
                        path.rLineTo(0.0f, fArr2[i2 + 0]);
                        f3 = f21;
                        f4 = f16;
                        f5 = fArr2[i2 + 0] + f22;
                        f6 = f23;
                        f7 = f17;
                        f2 = f20;
                        break;
                    default:
                        f2 = f20;
                        f3 = f21;
                        f4 = f16;
                        f5 = f22;
                        f6 = f23;
                        f7 = f17;
                        break;
                }
                i2 += i;
                f20 = f2;
                f21 = f3;
                f22 = f5;
                f23 = f6;
                c2 = c3;
                f17 = f7;
                f16 = f4;
            }
            fArr[0] = f23;
            fArr[1] = f22;
            fArr[2] = f16;
            fArr[3] = f17;
            fArr[4] = f21;
            fArr[5] = f20;
        }

        private static void drawArc(Path path, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z, boolean z2) {
            double d2;
            double d3;
            double radians = Math.toRadians(f8);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d4 = ((((double) f2) * dCos) + (((double) f3) * dSin)) / ((double) f6);
            double d5 = ((((double) (-f2)) * dSin) + (((double) f3) * dCos)) / ((double) f7);
            double d6 = ((((double) f4) * dCos) + (((double) f5) * dSin)) / ((double) f6);
            double d7 = ((((double) (-f4)) * dSin) + (((double) f5) * dCos)) / ((double) f7);
            double d8 = d4 - d6;
            double d9 = d5 - d7;
            double d10 = (d4 + d6) / 2.0d;
            double d11 = (d5 + d7) / 2.0d;
            double d12 = (d8 * d8) + (d9 * d9);
            if (d12 == 0.0d) {
                Log.w(PathParser.LOGTAG, " Points are coincident");
                return;
            }
            double d13 = (1.0d / d12) - 0.25d;
            if (d13 < 0.0d) {
                Log.w(PathParser.LOGTAG, "Points are too far apart " + d12);
                float fSqrt = (float) (Math.sqrt(d12) / 1.99999d);
                drawArc(path, f2, f3, f4, f5, f6 * fSqrt, f7 * fSqrt, f8, z, z2);
                return;
            }
            double dSqrt = Math.sqrt(d13);
            double d14 = d8 * dSqrt;
            double d15 = d9 * dSqrt;
            if (z == z2) {
                d2 = d10 - d15;
                d3 = d14 + d11;
            } else {
                d2 = d15 + d10;
                d3 = d11 - d14;
            }
            double dAtan2 = Math.atan2(d5 - d3, d4 - d2);
            double dAtan22 = Math.atan2(d7 - d3, d6 - d2) - dAtan2;
            if (z2 != (dAtan22 >= 0.0d)) {
                if (dAtan22 > 0.0d) {
                    dAtan22 -= 6.283185307179586d;
                } else {
                    dAtan22 += 6.283185307179586d;
                }
            }
            double d16 = ((double) f6) * d2;
            double d17 = d3 * ((double) f7);
            arcToBezier(path, (d16 * dCos) - (d17 * dSin), (d16 * dSin) + (d17 * dCos), f6, f7, f2, f3, radians, dAtan2, dAtan22);
        }

        private static void arcToBezier(Path path, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
            int iCeil = (int) Math.ceil(Math.abs((4.0d * d10) / 3.141592653589793d));
            double dCos = Math.cos(d8);
            double dSin = Math.sin(d8);
            double dCos2 = Math.cos(d9);
            double dSin2 = Math.sin(d9);
            double d11 = (((-d4) * dCos) * dSin2) - ((d5 * dSin) * dCos2);
            double d12 = d10 / ((double) iCeil);
            int i = 0;
            double d13 = (dSin2 * (-d4) * dSin) + (dCos2 * d5 * dCos);
            double d14 = d11;
            while (i < iCeil) {
                double d15 = d9 + d12;
                double dSin3 = Math.sin(d15);
                double dCos3 = Math.cos(d15);
                double d16 = (((d4 * dCos) * dCos3) + d2) - ((d5 * dSin) * dSin3);
                double d17 = (d5 * dCos * dSin3) + (d4 * dSin * dCos3) + d3;
                double d18 = (((-d4) * dCos) * dSin3) - ((d5 * dSin) * dCos3);
                double d19 = (dCos3 * d5 * dCos) + (dSin3 * (-d4) * dSin);
                double dTan = Math.tan((d15 - d9) / 2.0d);
                double dSqrt = ((Math.sqrt((dTan * (3.0d * dTan)) + 4.0d) - 1.0d) * Math.sin(d15 - d9)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d14 * dSqrt) + d6), (float) (d7 + (d13 * dSqrt)), (float) (d16 - (dSqrt * d18)), (float) (d17 - (dSqrt * d19)), (float) d16, (float) d17);
                i++;
                d14 = d18;
                d9 = d15;
                d7 = d17;
                d6 = d16;
                d13 = d19;
            }
        }
    }
}
