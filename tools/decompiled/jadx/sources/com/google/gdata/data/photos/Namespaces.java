package com.google.gdata.data.photos;

import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class Namespaces {
    public static final String EXIF_PREFIX = "http://schemas.google.com/photos/exif/2007#";
    public static final String KML_ALIAS = "kml";
    public static final String KML_PREFIX = "http://earth.google.com/kml/2.1#";
    public static final String PHEED_PREFIX = "http://www.pheed.com/pheed/#";
    public static final String PHOTOS_PREFIX = "http://schemas.google.com/photos/2007#";
    public static final String REPORT_REL = "http://schemas.google.com/photos/2007#report";
    public static final String SLIDESHOW_REL = "http://schemas.google.com/photos/2007#slideshow";
    public static final String EXIF_ALIAS = "exif";
    public static final String EXIF = "http://schemas.google.com/photos/exif/2007";
    public static final XmlNamespace EXIF_NAMESPACE = new XmlNamespace(EXIF_ALIAS, EXIF);
    public static final String PHOTOS_ALIAS = "gphoto";
    public static final String PHOTOS = "http://schemas.google.com/photos/2007";
    public static final XmlNamespace PHOTOS_NAMESPACE = new XmlNamespace(PHOTOS_ALIAS, PHOTOS);
    public static final String PHEED_ALIAS = "pheed";
    public static final String PHEED = "http://www.pheed.com/pheed/";
    public static final XmlNamespace PHEED_NS = new XmlNamespace(PHEED_ALIAS, PHEED);
    public static final String KML = "http://earth.google.com/kml/2.1";
    public static final XmlNamespace KML_NS = new XmlNamespace("kml", KML);

    private Namespaces() {
    }
}
