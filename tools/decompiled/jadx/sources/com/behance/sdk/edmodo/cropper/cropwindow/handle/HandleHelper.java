package com.behance.sdk.edmodo.cropper.cropwindow.handle;

import android.graphics.Rect;
import com.behance.sdk.edmodo.cropper.cropwindow.edge.Edge;
import com.behance.sdk.edmodo.cropper.cropwindow.edge.EdgePair;
import com.behance.sdk.edmodo.cropper.util.AspectRatioUtil;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
abstract class HandleHelper {
    private static final float UNFIXED_ASPECT_RATIO_CONSTANT = 1.0f;
    private EdgePair mActiveEdges;
    private Edge mHorizontalEdge;
    private Edge mVerticalEdge;

    abstract void updateCropWindow(float f2, float f3, float f4, Rect rect, float f5);

    HandleHelper(Edge edge, Edge edge2) {
        this.mHorizontalEdge = edge;
        this.mVerticalEdge = edge2;
        this.mActiveEdges = new EdgePair(this.mHorizontalEdge, this.mVerticalEdge);
    }

    void updateCropWindow(float f2, float f3, Rect rect, float f4) {
        EdgePair activeEdges = getActiveEdges();
        Edge edge = activeEdges.primary;
        Edge edge2 = activeEdges.secondary;
        if (edge != null) {
            edge.adjustCoordinate(f2, f3, rect, f4, 1.0f);
        }
        if (edge2 != null) {
            edge2.adjustCoordinate(f2, f3, rect, f4, 1.0f);
        }
    }

    EdgePair getActiveEdges() {
        return this.mActiveEdges;
    }

    EdgePair getActiveEdges(float f2, float f3, float f4) {
        if (getAspectRatio(f2, f3) > f4) {
            this.mActiveEdges.primary = this.mVerticalEdge;
            this.mActiveEdges.secondary = this.mHorizontalEdge;
        } else {
            this.mActiveEdges.primary = this.mHorizontalEdge;
            this.mActiveEdges.secondary = this.mVerticalEdge;
        }
        return this.mActiveEdges;
    }

    private float getAspectRatio(float f2, float f3) {
        float coordinate = this.mVerticalEdge == Edge.LEFT ? f2 : Edge.LEFT.getCoordinate();
        float coordinate2 = this.mHorizontalEdge == Edge.TOP ? f3 : Edge.TOP.getCoordinate();
        if (this.mVerticalEdge != Edge.RIGHT) {
            f2 = Edge.RIGHT.getCoordinate();
        }
        if (this.mHorizontalEdge != Edge.BOTTOM) {
            f3 = Edge.BOTTOM.getCoordinate();
        }
        return AspectRatioUtil.calculateAspectRatio(coordinate, coordinate2, f2, f3);
    }
}
