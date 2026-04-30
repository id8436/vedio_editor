package com.google.gdata.data.geo.impl;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.geo.Point;
import com.google.gdata.data.geo.PointData;

/* JADX INFO: loaded from: classes3.dex */
public class PointDataImpl implements PointData {
    private ExtensionPoint extPoint;

    public PointDataImpl(ExtensionPoint extensionPoint) {
        this.extPoint = extensionPoint;
    }

    @Override // com.google.gdata.data.geo.PointData
    public void setGeoLocation(Double d2, Double d3) throws IllegalArgumentException {
        setGeoLocation(new GeoRssWhere(d2, d3));
    }

    @Override // com.google.gdata.data.geo.PointData
    public void setGeoLocation(Point point) {
        setPoint(this.extPoint, point);
    }

    @Override // com.google.gdata.data.geo.PointData
    public Point getGeoLocation() {
        return getPoint(this.extPoint);
    }

    @Override // com.google.gdata.data.geo.PointData
    public void clearPoint() {
        clearPoint(this.extPoint);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void declareExtensions(ExtensionProfile extensionProfile) {
        Class<?> cls = this.extPoint.getClass();
        declare(extensionProfile, cls, W3CPoint.getDefaultDescription(false));
        declare(extensionProfile, cls, GeoRssPoint.getDefaultDescription(false));
        declare(extensionProfile, cls, GeoRssWhere.getDefaultDescription(false));
        new W3CPoint().declareExtensions(extensionProfile);
        new GeoRssWhere().declareExtensions(extensionProfile);
    }

    private void declare(ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls, ExtensionDescription extensionDescription) {
        extensionProfile.declare(cls, extensionDescription);
        if (BaseEntry.class.isAssignableFrom(cls)) {
            extensionProfile.declare(BaseEntry.class, extensionDescription);
        }
    }

    public static void setPoint(ExtensionPoint extensionPoint, Point point) {
        Point pointExtension = getPointExtension(extensionPoint);
        if (pointExtension != null) {
            pointExtension.setGeoLocation(point != null ? point.getLatitude() : null, point != null ? point.getLongitude() : null);
        } else if (point != null) {
            extensionPoint.setExtension(point);
        }
    }

    static Point getPointExtension(ExtensionPoint extensionPoint) {
        for (Extension extension : extensionPoint.getExtensions()) {
            if (extension instanceof Point) {
                return (Point) extension;
            }
        }
        return null;
    }

    public static Point getPoint(ExtensionPoint extensionPoint) {
        Point pointExtension = getPointExtension(extensionPoint);
        if (pointExtension != null) {
            if (pointExtension instanceof GeoRssWhere) {
                GeoRssWhere geoRssWhere = (GeoRssWhere) pointExtension;
                if (geoRssWhere.hasPoint()) {
                    return geoRssWhere;
                }
            } else {
                return pointExtension;
            }
        }
        return null;
    }

    public static void clearPoint(ExtensionPoint extensionPoint) {
        Point pointExtension = getPointExtension(extensionPoint);
        if (pointExtension != null) {
            if (pointExtension instanceof GeoRssWhere) {
                GeoRssWhere geoRssWhere = (GeoRssWhere) pointExtension;
                if (geoRssWhere.hasBox()) {
                    geoRssWhere.clearPoint();
                    return;
                }
            }
            extensionPoint.removeExtension(pointExtension);
        }
    }
}
