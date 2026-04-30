package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXLocalStorageScheme;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.Rect;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageCopyUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePSDComposite {
    private AdobePSDCompositeMutableBranch _current;
    private AdobeDCXComposite _dcxComposite;
    private String _psdHref;
    private AdobePSDCompositeMutableBranch _pulled;
    private AdobePSDCompositeMutableBranch _pushed;

    public AdobePSDComposite(String str, String str2) {
        this._psdHref = str;
        try {
            this._dcxComposite = AdobeDCXComposite.createCompositeFromHref(null, null, str2, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite);
            this._dcxComposite.setInitializeMetadataFromManifest(false);
        } catch (Exception e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDComposite.Constructor", e2.getMessage());
        }
        if (this._psdHref != null) {
            this._dcxComposite.setCompositeId(AdobeStorageUtils.getMD5HashOfString(getStringByRemovingPercentEncoding(this._psdHref), true));
        }
        try {
            this._dcxComposite.setHref(new URI("assets/psd/" + this._dcxComposite.getCompositeId()));
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDComposite.Constructor", e3.getMessage());
        }
    }

    AdobeDCXComposite getDcxComposite() {
        return this._dcxComposite;
    }

    public AdobePSDComposite(String str, String str2, Rect rect) {
        try {
            this._dcxComposite = new AdobeDCXComposite(str, "application/vnd.adobe.psd+dcx", str2, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite, (String) null);
        } catch (Exception e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDComposite.Constructor", e2.getMessage());
        }
        this._dcxComposite.setInitializeMetadataFromManifest(false);
        try {
            this._dcxComposite.setHref(new URI("assets/psd/" + this._dcxComposite.getCompositeId()));
        } catch (URISyntaxException e3) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDComposite.Constructor", e3.getMessage());
        }
        getCurrent().setVersion("1.0");
        getCurrent().setBounds(rect);
        this._dcxComposite.getCurrent().setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateUnmodified);
    }

    private String getStringByRemovingPercentEncoding(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobePSDComposite.getStringByRemovingPercentEncoding", e2.getMessage());
            return null;
        }
    }

    public AdobePSDComposite(String str) throws AdobeDCXException {
        this._dcxComposite = AdobeDCXComposite.createCompositeFromPath(str, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite);
        this._dcxComposite.setInitializeMetadataFromManifest(false);
        if (this._dcxComposite.getHref() == null) {
            try {
                this._dcxComposite.setHref(new URI("assets/psd" + this._dcxComposite.getCompositeId()));
            } catch (URISyntaxException e2) {
                AdobeLogger.log(Level.DEBUG, "AdobePSDComposite.Constructor", e2.getMessage());
            }
        }
    }

    public AdobePSDCompositeMutableBranch getCurrent() {
        AdobeDCXCompositeMutableBranch current = this._dcxComposite.getCurrent();
        if (current == null) {
            this._current = null;
        } else if (this._current == null) {
            this._current = new AdobePSDCompositeMutableBranch(current);
        } else {
            this._current.setMutableDcxBranch(current);
        }
        return this._current;
    }

    public AdobePSDCompositeMutableBranch getPulled() {
        AdobeDCXCompositeBranch pulled = this._dcxComposite.getPulled();
        if (pulled == null) {
            this._pulled = null;
        } else if (this._pulled == null) {
            this._pulled = new AdobePSDCompositeMutableBranch(pulled);
        } else {
            this._pulled.setDcxBranch(pulled);
        }
        return this._pulled;
    }

    public AdobePSDCompositeMutableBranch getPushed() throws AdobeDCXException {
        AdobeDCXCompositeBranch pushed = this._dcxComposite.getPushed();
        if (pushed == null) {
            this._pushed = null;
        } else if (this._pushed == null) {
            this._pushed = new AdobePSDCompositeMutableBranch(pushed);
        } else {
            this._pushed.setDcxBranch(pushed);
        }
        return this._pushed;
    }

    public boolean resolvePulledBranch() throws AdobeDCXException {
        return this._dcxComposite.resolvePullWithBranch(null);
    }

    public boolean acceptPushWithError() throws AdobeDCXException {
        return this._dcxComposite.acceptPush();
    }

    public boolean commitChanges() throws AdobeDCXException {
        return this._dcxComposite.commitChanges();
    }

    public boolean removeLocalStorage() throws AdobeDCXException {
        return this._dcxComposite.removeLocalStorage();
    }

    public String getPsdHref() {
        JSONObject links;
        JSONObject jSONObject;
        if (this._psdHref == null && (links = this._dcxComposite.getCurrent().getLinks()) != null) {
            try {
                jSONObject = (JSONObject) links.get("source");
            } catch (JSONException e2) {
                jSONObject = null;
            }
            if (jSONObject != null) {
                this._psdHref = jSONObject.optString("href", null);
            }
        }
        return this._psdHref;
    }

    public void setPsdHref(String str) throws AdobeDCXException {
        JSONObject jSONObjectDeepMutableCopyOfDictionary;
        String psdHref = getPsdHref();
        if ((psdHref == null && str != null) || psdHref == null || !psdHref.equals(str)) {
            this._psdHref = str;
            if (str != null) {
                this._dcxComposite.resetBinding();
                this._dcxComposite.setCompositeId(AdobeStorageUtils.getMD5HashOfString(getStringByRemovingPercentEncoding(str), true));
                AdobeDCXCompositeMutableBranch current = this._dcxComposite.getCurrent();
                if (current != null && (jSONObjectDeepMutableCopyOfDictionary = AdobeStorageCopyUtils.deepMutableCopyOfDictionary(current.getLinks())) != null) {
                    jSONObjectDeepMutableCopyOfDictionary.remove("source");
                    current.setLinks(jSONObjectDeepMutableCopyOfDictionary);
                }
                try {
                    this._dcxComposite.setHref(new URI(AdobeDCXUtils.stringByAppendingLastPathComponent("assets/psd", this._dcxComposite.getCompositeId())));
                } catch (URISyntaxException e2) {
                }
                if (getCurrent() != null) {
                    getCurrent().setName(AdobeStorageLastPathComponentUtil.getLastPathComponent(str));
                }
            }
        }
    }
}
