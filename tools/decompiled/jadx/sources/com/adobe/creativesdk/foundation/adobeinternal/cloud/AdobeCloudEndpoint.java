package com.adobe.creativesdk.foundation.adobeinternal.cloud;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.mortbay.jetty.servlet.ServletHandler;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCloudEndpoint implements Externalizable {
    private static final String AdobeCloudEndpointCoderKeyServiceType = "service_type";
    private static final String AdobeCloudEndpointCoderKeyServiceURLs = "service_urls";
    private transient AdobeCloudServiceType _serviceType;
    private HashMap<String, URL> _serviceURLs;

    public AdobeCloudEndpoint() {
        this._serviceType = AdobeCloudServiceType.AdobeCloudServiceTypeUnknown;
        this._serviceURLs = new HashMap<>();
    }

    public AdobeCloudEndpoint getCopy() {
        AdobeCloudEndpoint adobeCloudEndpoint = new AdobeCloudEndpoint();
        adobeCloudEndpoint._serviceType = this._serviceType;
        adobeCloudEndpoint._serviceURLs = (HashMap) this._serviceURLs.clone();
        return adobeCloudEndpoint;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this._serviceType = AdobeCloudServiceType.values()[objectInput.readInt()];
        this._serviceURLs = (HashMap) objectInput.readObject();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this._serviceType.getValue());
        objectOutput.writeObject(this._serviceURLs);
    }

    public String toString() {
        HashMap map = new HashMap();
        map.put(AdobeCloudEndpointCoderKeyServiceType, this._serviceType);
        map.put(AdobeCloudEndpointCoderKeyServiceURLs, this._serviceURLs);
        return map.toString();
    }

    public HashMap<String, URL> getServiceURLs() {
        return this._serviceURLs;
    }

    public AdobeCloudServiceType getServiceType() {
        return this._serviceType;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj == null || !(obj instanceof AdobeCloudEndpoint)) {
            return false;
        }
        AdobeCloudEndpoint adobeCloudEndpoint = (AdobeCloudEndpoint) obj;
        if (this._serviceType != adobeCloudEndpoint._serviceType) {
            return false;
        }
        if (this._serviceURLs == null && adobeCloudEndpoint._serviceURLs == null) {
            return true;
        }
        if (this._serviceURLs == null || adobeCloudEndpoint._serviceURLs == null || this._serviceURLs.size() != adobeCloudEndpoint._serviceURLs.size()) {
            return false;
        }
        for (Map.Entry<String, URL> entry : this._serviceURLs.entrySet()) {
            URL url = adobeCloudEndpoint._serviceURLs.get(entry.getKey());
            if (url == null || !url.getPath().equals(entry.getValue().getPath())) {
                z = false;
                break;
            }
        }
        z = true;
        return z;
    }

    public AdobeCloudEndpoint(String str, URL url, AdobeCloudServiceType adobeCloudServiceType) {
        this();
        this._serviceType = adobeCloudServiceType;
        str = str == null ? ServletHandler.__DEFAULT_SERVLET : str;
        if (url != null) {
            this._serviceURLs.put(str, url);
        } else {
            AdobeLogger.log(Level.ERROR, AdobeCloudEndpoint.class.getSimpleName(), "Service URL cannot be null.");
        }
    }

    public void addServiceSchemaId(String str, URL url) {
        if (str == null) {
            AdobeLogger.log(Level.ERROR, AdobeCloudEndpoint.class.getSimpleName(), "Service name cannot be null.");
        }
        if (url == null) {
            AdobeLogger.log(Level.ERROR, AdobeCloudEndpoint.class.getSimpleName(), "Service URL cannot be null.");
        }
        if (str != null && url != null) {
            this._serviceURLs.put(str, url);
        }
    }
}
