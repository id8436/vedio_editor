package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryAnalyticsOperation {
    private AdobeLibraryElement _element;
    private String _eventName;
    private AdobeLibraryComposite _library;
    private String _representationRel;
    private JSONObject _properties = null;
    boolean _doTrackAction = true;

    public AdobeLibraryAnalyticsOperation(String str, AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement, String str2) {
        this._eventName = str;
        this._library = adobeLibraryComposite;
        this._element = adobeLibraryElement;
        this._representationRel = str2;
    }

    public void setLibrary(AdobeLibraryComposite adobeLibraryComposite) {
        this._library = adobeLibraryComposite;
    }

    public void setElement(AdobeLibraryElement adobeLibraryElement) {
        this._element = adobeLibraryElement;
    }

    public AdobeLibraryComposite getLibrary() {
        return this._library;
    }

    public AdobeLibraryElement getElement() {
        return this._element;
    }

    public void trackAction(AdobeCSDKException adobeCSDKException) {
        AdobeLibraryRepresentation primaryRepresentation;
        String string;
        if (this._doTrackAction) {
            if (this._library != null && this._element != null && (primaryRepresentation = this._element.getPrimaryRepresentation()) != null) {
                this._properties = new JSONObject();
                try {
                    this._properties.put("elementPrimaryType", primaryRepresentation.getType());
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryAnalyticsOperation.class.getSimpleName(), null, e2);
                }
                JSONObject trackingData = primaryRepresentation.getTrackingData();
                if (trackingData.length() > 0 && (string = trackingData.toString()) != null) {
                    try {
                        this._properties.put("trackingData", string);
                    } catch (JSONException e3) {
                        AdobeLogger.log(Level.DEBUG, AdobeLibraryAnalyticsOperation.class.getSimpleName(), null, e3);
                    }
                }
            }
            if (this._representationRel == null || this._representationRel.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                AdobeLibraryAnalyticsReporter.trackAction(this._eventName, this._library, this._element, null, this._properties, adobeCSDKException);
            }
        }
    }
}
