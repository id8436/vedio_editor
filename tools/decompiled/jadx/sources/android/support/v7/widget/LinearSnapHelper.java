package android.support.v7.widget;

import android.graphics.PointF;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.ActivityChooserView;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class LinearSnapHelper extends SnapHelper {
    private static final float INVALID_DISTANCE = 1.0f;

    @Nullable
    private OrientationHelper mHorizontalHelper;

    @Nullable
    private OrientationHelper mVerticalHelper;

    @Override // android.support.v7.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = distanceToCenter(layoutManager, view, getHorizontalHelper(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = distanceToCenter(layoutManager, view, getVerticalHelper(layoutManager));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v7.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        int itemCount;
        View viewFindSnapView;
        int position;
        PointF pointFComputeScrollVectorForPosition;
        int iEstimateNextPositionDiffForFling;
        int iEstimateNextPositionDiffForFling2;
        if ((layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) && (itemCount = layoutManager.getItemCount()) != 0 && (viewFindSnapView = findSnapView(layoutManager)) != null && (position = layoutManager.getPosition(viewFindSnapView)) != -1 && (pointFComputeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) != null) {
            if (layoutManager.canScrollHorizontally()) {
                iEstimateNextPositionDiffForFling = estimateNextPositionDiffForFling(layoutManager, getHorizontalHelper(layoutManager), i, 0);
                if (pointFComputeScrollVectorForPosition.x < 0.0f) {
                    iEstimateNextPositionDiffForFling = -iEstimateNextPositionDiffForFling;
                }
            } else {
                iEstimateNextPositionDiffForFling = 0;
            }
            if (layoutManager.canScrollVertically()) {
                iEstimateNextPositionDiffForFling2 = estimateNextPositionDiffForFling(layoutManager, getVerticalHelper(layoutManager), 0, i2);
                if (pointFComputeScrollVectorForPosition.y < 0.0f) {
                    iEstimateNextPositionDiffForFling2 = -iEstimateNextPositionDiffForFling2;
                }
            } else {
                iEstimateNextPositionDiffForFling2 = 0;
            }
            if (!layoutManager.canScrollVertically()) {
                iEstimateNextPositionDiffForFling2 = iEstimateNextPositionDiffForFling;
            }
            if (iEstimateNextPositionDiffForFling2 == 0) {
                return -1;
            }
            int i3 = position + iEstimateNextPositionDiffForFling2;
            if (i3 < 0) {
                i3 = 0;
            }
            if (i3 >= itemCount) {
                return itemCount - 1;
            }
            return i3;
        }
        return -1;
    }

    @Override // android.support.v7.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return findCenterView(layoutManager, getVerticalHelper(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return findCenterView(layoutManager, getHorizontalHelper(layoutManager));
        }
        return null;
    }

    private int distanceToCenter(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view, OrientationHelper orientationHelper) {
        int end;
        int decoratedMeasurement = (orientationHelper.getDecoratedMeasurement(view) / 2) + orientationHelper.getDecoratedStart(view);
        if (layoutManager.getClipToPadding()) {
            end = orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2);
        } else {
            end = orientationHelper.getEnd() / 2;
        }
        return decoratedMeasurement - end;
    }

    private int estimateNextPositionDiffForFling(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper, int i, int i2) {
        int[] iArrCalculateScrollDistance = calculateScrollDistance(i, i2);
        float fComputeDistancePerChild = computeDistancePerChild(layoutManager, orientationHelper);
        if (fComputeDistancePerChild <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(iArrCalculateScrollDistance[0]) > Math.abs(iArrCalculateScrollDistance[1]) ? iArrCalculateScrollDistance[0] : iArrCalculateScrollDistance[1]) / fComputeDistancePerChild);
    }

    @Nullable
    private View findCenterView(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int end;
        View view;
        View view2 = null;
        int childCount = layoutManager.getChildCount();
        if (childCount != 0) {
            if (layoutManager.getClipToPadding()) {
                end = orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2);
            } else {
                end = orientationHelper.getEnd() / 2;
            }
            int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = layoutManager.getChildAt(i2);
                int iAbs = Math.abs((orientationHelper.getDecoratedStart(childAt) + (orientationHelper.getDecoratedMeasurement(childAt) / 2)) - end);
                if (iAbs < i) {
                    view = childAt;
                } else {
                    iAbs = i;
                    view = view2;
                }
                i2++;
                view2 = view;
                i = iAbs;
            }
        }
        return view2;
    }

    private float computeDistancePerChild(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int i;
        View view;
        View view2;
        View view3 = null;
        int i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int childCount = layoutManager.getChildCount();
        if (childCount == 0) {
            return 1.0f;
        }
        int i3 = 0;
        View view4 = null;
        int i4 = Integer.MIN_VALUE;
        while (i3 < childCount) {
            View childAt = layoutManager.getChildAt(i3);
            int position = layoutManager.getPosition(childAt);
            if (position == -1) {
                i = i2;
                view = view3;
                view2 = view4;
            } else {
                if (position < i2) {
                    i2 = position;
                    view4 = childAt;
                }
                if (position > i4) {
                    i4 = position;
                    view2 = view4;
                    i = i2;
                    view = childAt;
                } else {
                    i = i2;
                    view = view3;
                    view2 = view4;
                }
            }
            i3++;
            view4 = view2;
            view3 = view;
            i2 = i;
        }
        if (view4 == null || view3 == null) {
            return 1.0f;
        }
        int iMax = Math.max(orientationHelper.getDecoratedEnd(view4), orientationHelper.getDecoratedEnd(view3)) - Math.min(orientationHelper.getDecoratedStart(view4), orientationHelper.getDecoratedStart(view3));
        if (iMax == 0) {
            return 1.0f;
        }
        return (iMax * 1.0f) / ((i4 - i2) + 1);
    }

    @NonNull
    private OrientationHelper getVerticalHelper(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (this.mVerticalHelper == null || this.mVerticalHelper.mLayoutManager != layoutManager) {
            this.mVerticalHelper = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.mVerticalHelper;
    }

    @NonNull
    private OrientationHelper getHorizontalHelper(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (this.mHorizontalHelper == null || this.mHorizontalHelper.mLayoutManager != layoutManager) {
            this.mHorizontalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.mHorizontalHelper;
    }
}
