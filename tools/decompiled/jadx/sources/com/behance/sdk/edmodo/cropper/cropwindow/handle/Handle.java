package com.behance.sdk.edmodo.cropper.cropwindow.handle;

import android.graphics.Rect;
import com.behance.sdk.edmodo.cropper.cropwindow.edge.Edge;
import com.behance.sdk.edmodo.cropper.cropwindow.edge.EdgePair;
import com.behance.sdk.edmodo.cropper.util.AspectRatioUtil;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'TOP_LEFT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class Handle {
    private static final /* synthetic */ Handle[] $VALUES;
    public static final Handle BOTTOM;
    public static final Handle BOTTOM_LEFT;
    public static final Handle BOTTOM_RIGHT;
    public static final Handle CENTER;
    public static final Handle LEFT;
    public static final Handle RIGHT;
    public static final Handle TOP;
    public static final Handle TOP_LEFT;
    public static final Handle TOP_RIGHT;
    private HandleHelper mHelper;

    public static Handle valueOf(String str) {
        return (Handle) Enum.valueOf(Handle.class, str);
    }

    public static Handle[] values() {
        return (Handle[]) $VALUES.clone();
    }

    static {
        final Edge edge = Edge.TOP;
        final Edge edge2 = Edge.LEFT;
        TOP_LEFT = new Handle("TOP_LEFT", 0, new HandleHelper(edge, edge2) { // from class: com.behance.sdk.edmodo.cropper.cropwindow.handle.CornerHandleHelper
            @Override // com.behance.sdk.edmodo.cropper.cropwindow.handle.HandleHelper
            void updateCropWindow(float f2, float f3, float f4, Rect rect, float f5) {
                EdgePair activeEdges = getActiveEdges(f2, f3, f4);
                Edge edge3 = activeEdges.primary;
                Edge edge4 = activeEdges.secondary;
                edge3.adjustCoordinate(f2, f3, rect, f5, f4);
                edge4.adjustCoordinate(f4);
                if (edge4.isOutsideMargin(rect, f5)) {
                    edge4.snapToRect(rect);
                    edge3.adjustCoordinate(f4);
                }
            }
        });
        final Edge edge3 = Edge.TOP;
        final Edge edge4 = Edge.RIGHT;
        TOP_RIGHT = new Handle("TOP_RIGHT", 1, new HandleHelper(edge3, edge4) { // from class: com.behance.sdk.edmodo.cropper.cropwindow.handle.CornerHandleHelper
            @Override // com.behance.sdk.edmodo.cropper.cropwindow.handle.HandleHelper
            void updateCropWindow(float f2, float f3, float f4, Rect rect, float f5) {
                EdgePair activeEdges = getActiveEdges(f2, f3, f4);
                Edge edge32 = activeEdges.primary;
                Edge edge42 = activeEdges.secondary;
                edge32.adjustCoordinate(f2, f3, rect, f5, f4);
                edge42.adjustCoordinate(f4);
                if (edge42.isOutsideMargin(rect, f5)) {
                    edge42.snapToRect(rect);
                    edge32.adjustCoordinate(f4);
                }
            }
        });
        final Edge edge5 = Edge.BOTTOM;
        final Edge edge6 = Edge.LEFT;
        BOTTOM_LEFT = new Handle("BOTTOM_LEFT", 2, new HandleHelper(edge5, edge6) { // from class: com.behance.sdk.edmodo.cropper.cropwindow.handle.CornerHandleHelper
            @Override // com.behance.sdk.edmodo.cropper.cropwindow.handle.HandleHelper
            void updateCropWindow(float f2, float f3, float f4, Rect rect, float f5) {
                EdgePair activeEdges = getActiveEdges(f2, f3, f4);
                Edge edge32 = activeEdges.primary;
                Edge edge42 = activeEdges.secondary;
                edge32.adjustCoordinate(f2, f3, rect, f5, f4);
                edge42.adjustCoordinate(f4);
                if (edge42.isOutsideMargin(rect, f5)) {
                    edge42.snapToRect(rect);
                    edge32.adjustCoordinate(f4);
                }
            }
        });
        final Edge edge7 = Edge.BOTTOM;
        final Edge edge8 = Edge.RIGHT;
        BOTTOM_RIGHT = new Handle("BOTTOM_RIGHT", 3, new HandleHelper(edge7, edge8) { // from class: com.behance.sdk.edmodo.cropper.cropwindow.handle.CornerHandleHelper
            @Override // com.behance.sdk.edmodo.cropper.cropwindow.handle.HandleHelper
            void updateCropWindow(float f2, float f3, float f4, Rect rect, float f5) {
                EdgePair activeEdges = getActiveEdges(f2, f3, f4);
                Edge edge32 = activeEdges.primary;
                Edge edge42 = activeEdges.secondary;
                edge32.adjustCoordinate(f2, f3, rect, f5, f4);
                edge42.adjustCoordinate(f4);
                if (edge42.isOutsideMargin(rect, f5)) {
                    edge42.snapToRect(rect);
                    edge32.adjustCoordinate(f4);
                }
            }
        });
        final Edge edge9 = Edge.LEFT;
        LEFT = new Handle("LEFT", 4, new HandleHelper(edge9) { // from class: com.behance.sdk.edmodo.cropper.cropwindow.handle.VerticalHandleHelper
            private Edge mEdge;

            {
                super(null, edge9);
                this.mEdge = edge9;
            }

            @Override // com.behance.sdk.edmodo.cropper.cropwindow.handle.HandleHelper
            void updateCropWindow(float f2, float f3, float f4, Rect rect, float f5) {
                this.mEdge.adjustCoordinate(f2, f3, rect, f5, f4);
                float coordinate = Edge.LEFT.getCoordinate();
                float coordinate2 = Edge.TOP.getCoordinate();
                float coordinate3 = Edge.RIGHT.getCoordinate();
                float coordinate4 = Edge.BOTTOM.getCoordinate();
                float fCalculateHeight = (AspectRatioUtil.calculateHeight(coordinate, coordinate3, f4) - (coordinate4 - coordinate2)) / 2.0f;
                Edge.TOP.setCoordinate(coordinate2 - fCalculateHeight);
                Edge.BOTTOM.setCoordinate(fCalculateHeight + coordinate4);
                if (Edge.TOP.isOutsideMargin(rect, f5) && !this.mEdge.isNewRectangleOutOfBounds(Edge.TOP, rect, f4)) {
                    Edge.BOTTOM.offset(-Edge.TOP.snapToRect(rect));
                    this.mEdge.adjustCoordinate(f4);
                }
                if (Edge.BOTTOM.isOutsideMargin(rect, f5) && !this.mEdge.isNewRectangleOutOfBounds(Edge.BOTTOM, rect, f4)) {
                    Edge.TOP.offset(-Edge.BOTTOM.snapToRect(rect));
                    this.mEdge.adjustCoordinate(f4);
                }
            }
        });
        final Edge edge10 = Edge.TOP;
        TOP = new Handle("TOP", 5, new HandleHelper(edge10) { // from class: com.behance.sdk.edmodo.cropper.cropwindow.handle.HorizontalHandleHelper
            private Edge mEdge;

            {
                super(edge10, null);
                this.mEdge = edge10;
            }

            @Override // com.behance.sdk.edmodo.cropper.cropwindow.handle.HandleHelper
            void updateCropWindow(float f2, float f3, float f4, Rect rect, float f5) {
                this.mEdge.adjustCoordinate(f2, f3, rect, f5, f4);
                float coordinate = Edge.LEFT.getCoordinate();
                float coordinate2 = Edge.TOP.getCoordinate();
                float coordinate3 = Edge.RIGHT.getCoordinate();
                float fCalculateWidth = (AspectRatioUtil.calculateWidth(coordinate2, Edge.BOTTOM.getCoordinate(), f4) - (coordinate3 - coordinate)) / 2.0f;
                float f6 = coordinate - fCalculateWidth;
                Edge.LEFT.setCoordinate(f6);
                Edge.RIGHT.setCoordinate(fCalculateWidth + coordinate3);
                if (Edge.LEFT.isOutsideMargin(rect, f5) && !this.mEdge.isNewRectangleOutOfBounds(Edge.LEFT, rect, f4)) {
                    Edge.RIGHT.offset(-Edge.LEFT.snapToRect(rect));
                    this.mEdge.adjustCoordinate(f4);
                }
                if (Edge.RIGHT.isOutsideMargin(rect, f5) && !this.mEdge.isNewRectangleOutOfBounds(Edge.RIGHT, rect, f4)) {
                    Edge.LEFT.offset(-Edge.RIGHT.snapToRect(rect));
                    this.mEdge.adjustCoordinate(f4);
                }
            }
        });
        final Edge edge11 = Edge.RIGHT;
        RIGHT = new Handle("RIGHT", 6, new HandleHelper(edge11) { // from class: com.behance.sdk.edmodo.cropper.cropwindow.handle.VerticalHandleHelper
            private Edge mEdge;

            {
                super(null, edge11);
                this.mEdge = edge11;
            }

            @Override // com.behance.sdk.edmodo.cropper.cropwindow.handle.HandleHelper
            void updateCropWindow(float f2, float f3, float f4, Rect rect, float f5) {
                this.mEdge.adjustCoordinate(f2, f3, rect, f5, f4);
                float coordinate = Edge.LEFT.getCoordinate();
                float coordinate2 = Edge.TOP.getCoordinate();
                float coordinate3 = Edge.RIGHT.getCoordinate();
                float coordinate4 = Edge.BOTTOM.getCoordinate();
                float fCalculateHeight = (AspectRatioUtil.calculateHeight(coordinate, coordinate3, f4) - (coordinate4 - coordinate2)) / 2.0f;
                Edge.TOP.setCoordinate(coordinate2 - fCalculateHeight);
                Edge.BOTTOM.setCoordinate(fCalculateHeight + coordinate4);
                if (Edge.TOP.isOutsideMargin(rect, f5) && !this.mEdge.isNewRectangleOutOfBounds(Edge.TOP, rect, f4)) {
                    Edge.BOTTOM.offset(-Edge.TOP.snapToRect(rect));
                    this.mEdge.adjustCoordinate(f4);
                }
                if (Edge.BOTTOM.isOutsideMargin(rect, f5) && !this.mEdge.isNewRectangleOutOfBounds(Edge.BOTTOM, rect, f4)) {
                    Edge.TOP.offset(-Edge.BOTTOM.snapToRect(rect));
                    this.mEdge.adjustCoordinate(f4);
                }
            }
        });
        final Edge edge12 = Edge.BOTTOM;
        BOTTOM = new Handle("BOTTOM", 7, new HandleHelper(edge12) { // from class: com.behance.sdk.edmodo.cropper.cropwindow.handle.HorizontalHandleHelper
            private Edge mEdge;

            {
                super(edge12, null);
                this.mEdge = edge12;
            }

            @Override // com.behance.sdk.edmodo.cropper.cropwindow.handle.HandleHelper
            void updateCropWindow(float f2, float f3, float f4, Rect rect, float f5) {
                this.mEdge.adjustCoordinate(f2, f3, rect, f5, f4);
                float coordinate = Edge.LEFT.getCoordinate();
                float coordinate2 = Edge.TOP.getCoordinate();
                float coordinate3 = Edge.RIGHT.getCoordinate();
                float fCalculateWidth = (AspectRatioUtil.calculateWidth(coordinate2, Edge.BOTTOM.getCoordinate(), f4) - (coordinate3 - coordinate)) / 2.0f;
                float f6 = coordinate - fCalculateWidth;
                Edge.LEFT.setCoordinate(f6);
                Edge.RIGHT.setCoordinate(fCalculateWidth + coordinate3);
                if (Edge.LEFT.isOutsideMargin(rect, f5) && !this.mEdge.isNewRectangleOutOfBounds(Edge.LEFT, rect, f4)) {
                    Edge.RIGHT.offset(-Edge.LEFT.snapToRect(rect));
                    this.mEdge.adjustCoordinate(f4);
                }
                if (Edge.RIGHT.isOutsideMargin(rect, f5) && !this.mEdge.isNewRectangleOutOfBounds(Edge.RIGHT, rect, f4)) {
                    Edge.LEFT.offset(-Edge.RIGHT.snapToRect(rect));
                    this.mEdge.adjustCoordinate(f4);
                }
            }
        });
        CENTER = new Handle("CENTER", 8, new HandleHelper() { // from class: com.behance.sdk.edmodo.cropper.cropwindow.handle.CenterHandleHelper
            @Override // com.behance.sdk.edmodo.cropper.cropwindow.handle.HandleHelper
            void updateCropWindow(float f2, float f3, Rect rect, float f4) {
                float coordinate = Edge.LEFT.getCoordinate();
                float coordinate2 = Edge.TOP.getCoordinate();
                float coordinate3 = f2 - ((coordinate + Edge.RIGHT.getCoordinate()) / 2.0f);
                float coordinate4 = f3 - ((coordinate2 + Edge.BOTTOM.getCoordinate()) / 2.0f);
                Edge.LEFT.offset(coordinate3);
                Edge.TOP.offset(coordinate4);
                Edge.RIGHT.offset(coordinate3);
                Edge.BOTTOM.offset(coordinate4);
                if (Edge.LEFT.isOutsideMargin(rect, f4)) {
                    Edge.RIGHT.offset(Edge.LEFT.snapToRect(rect));
                } else if (Edge.RIGHT.isOutsideMargin(rect, f4)) {
                    Edge.LEFT.offset(Edge.RIGHT.snapToRect(rect));
                }
                if (Edge.TOP.isOutsideMargin(rect, f4)) {
                    Edge.BOTTOM.offset(Edge.TOP.snapToRect(rect));
                } else if (Edge.BOTTOM.isOutsideMargin(rect, f4)) {
                    Edge.TOP.offset(Edge.BOTTOM.snapToRect(rect));
                }
            }

            @Override // com.behance.sdk.edmodo.cropper.cropwindow.handle.HandleHelper
            void updateCropWindow(float f2, float f3, float f4, Rect rect, float f5) {
                updateCropWindow(f2, f3, rect, f5);
            }
        });
        $VALUES = new Handle[]{TOP_LEFT, TOP_RIGHT, BOTTOM_LEFT, BOTTOM_RIGHT, LEFT, TOP, RIGHT, BOTTOM, CENTER};
    }

    private Handle(String str, int i, HandleHelper handleHelper) {
        this.mHelper = handleHelper;
    }

    public void updateCropWindow(float f2, float f3, Rect rect, float f4) {
        this.mHelper.updateCropWindow(f2, f3, rect, f4);
    }

    public void updateCropWindow(float f2, float f3, float f4, Rect rect, float f5) {
        this.mHelper.updateCropWindow(f2, f3, f4, rect, f5);
    }
}
