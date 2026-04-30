package com.google.gdata.data.geo.impl;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.geo.Box;
import com.google.gdata.data.geo.BoxData;
import com.google.gdata.data.geo.Point;

/* JADX INFO: loaded from: classes3.dex */
public class BoxDataImpl implements BoxData {
    private final ExtensionPoint extPoint;

    public BoxDataImpl(ExtensionPoint extensionPoint) {
        this.extPoint = extensionPoint;
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void setGeoBoundingBox(Point point, Point point2) {
        setGeoBoundingBox(new GeoRssWhere(point, point2));
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void setGeoBoundingBox(Box box) {
        setBox(this.extPoint, box);
    }

    @Override // com.google.gdata.data.geo.BoxData
    public Box getGeoBoundingBox() {
        return getBox(this.extPoint);
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void clearGeoBoundingBox() {
        clearBox(this.extPoint);
    }

    public static void setBox(ExtensionPoint extensionPoint, Box box) {
        Box boxExtension = getBoxExtension(extensionPoint);
        if (boxExtension != null) {
            boxExtension.setGeoLocation(box != null ? box.getLowerLeft() : null, box != null ? box.getUpperRight() : null);
        } else if (box != null) {
            extensionPoint.setExtension(box);
        }
    }

    public static Box getBox(ExtensionPoint extensionPoint) {
        Box boxExtension = getBoxExtension(extensionPoint);
        if (boxExtension != null) {
            if (boxExtension instanceof GeoRssWhere) {
                GeoRssWhere geoRssWhere = (GeoRssWhere) boxExtension;
                if (geoRssWhere.hasBox()) {
                    return geoRssWhere;
                }
            } else {
                return boxExtension;
            }
        }
        return null;
    }

    static Box getBoxExtension(ExtensionPoint extensionPoint) {
        for (Extension extension : extensionPoint.getExtensions()) {
            if (extension instanceof Box) {
                return (Box) extension;
            }
        }
        return null;
    }

    public static void clearBox(ExtensionPoint extensionPoint) {
        Box boxExtension = getBoxExtension(extensionPoint);
        if (boxExtension != null) {
            if (boxExtension instanceof GeoRssWhere) {
                GeoRssWhere geoRssWhere = (GeoRssWhere) boxExtension;
                if (geoRssWhere.hasPoint()) {
                    geoRssWhere.clearBox();
                    return;
                }
            }
            extensionPoint.removeExtension(boxExtension);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void declareExtensions(ExtensionProfile extensionProfile) {
        Class<?> cls = this.extPoint.getClass();
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, GeoRssBox.getDefaultDescription(false));
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, GeoRssWhere.getDefaultDescription(false));
        new GeoRssWhere().declareExtensions(extensionProfile);
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, GmlEnvelope.getDefaultDescription(false));
        new GmlEnvelope().declareExtensions(extensionProfile);
    }
}
