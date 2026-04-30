package com.adobe.creativesdk.foundation.adobeinternal.imageservice;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetKeys;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeImageOperation {
    public static final String CONTENT_TYPE = "content-type";
    public static final String INPUTS = "inputs";
    public static final String LOCATION = "location";
    public static final String OPTIONS = "options";
    public static final String OUTPUTS = "outputs";
    public static final String RESPONSE = "response";
    private static String TAG = AdobeImageOperation.class.getSimpleName();
    public static final String UTF_8 = "UTF-8";
    private JSONArray mComponents;
    private JSONObject mInputs;
    private JSONObject mOptions;
    private JSONObject mOutputDispositions;
    private JSONObject mOutputs;
    private JSONObject mResults;

    AdobeNetworkHttpRequest createImageServiceRequestWithURLString(String str, URL url, String str2) {
        URL url2;
        try {
            url2 = new URL(AdobeStorageLastPathComponentUtil.getRelativeTo(str, url.toString()));
        } catch (MalformedURLException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
            url2 = null;
        }
        AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest();
        adobeNetworkHttpRequest.setUrl(url2);
        adobeNetworkHttpRequest.setRequestMethod(AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST);
        HashMap<String, AdobeStorageResourceItem> map = new HashMap<>();
        String strGenRandString = genRandString();
        String str3 = strGenRandString + "0@adobe.com";
        String strSerializeToJSON = serializeToJSON(map, strGenRandString);
        AdobeLogger.log(Level.DEBUG, TAG, strSerializeToJSON);
        if (map.size() == 0) {
            AdobeLogger.log(Level.DEBUG, TAG, "response : image-operation+json");
            adobeNetworkHttpRequest.setRequestProperty("content-type", "application/vnd.adobe.image-operation+json");
            adobeNetworkHttpRequest.setBody(strSerializeToJSON.getBytes(Charsets.UTF_8));
            return adobeNetworkHttpRequest;
        }
        AdobeLogger.log(Level.DEBUG, TAG, "response : multipart");
        String str4 = "Boundary_" + genRandString();
        adobeNetworkHttpRequest.setRequestProperty("content-type", "multipart/related; boundary=" + str4);
        AdobeImageServiceBodyStreamFactory.bodyStreamFactoryWithJSONData(strSerializeToJSON, str3, map, str4, str2);
        try {
            long length = new File(str2).length();
            AdobeLogger.log(Level.DEBUG, TAG, "body stream len : " + length);
            adobeNetworkHttpRequest.setBodyStreamFromFile(str2);
            adobeNetworkHttpRequest.setRequestProperty(AdobeStorageSession.CONTENT_LENGTH, "" + Long.toString(length));
            return adobeNetworkHttpRequest;
        } catch (IOException e3) {
            AdobeLogger.log(Level.ERROR, TAG, "", e3);
            return null;
        }
    }

    String serializeToJSON(HashMap<String, AdobeStorageResourceItem> map, String str) {
        int i;
        URI uri;
        int i2;
        JSONObject jSONObject = new JSONObject();
        if (this.mOptions != null) {
            try {
                jSONObject.putOpt(OPTIONS, this.mOptions);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.ERROR, TAG, "", e2);
            }
        }
        if (this.mResults != null) {
            try {
                jSONObject.putOpt(RESPONSE, this.mResults);
            } catch (JSONException e3) {
                AdobeLogger.log(Level.ERROR, TAG, "", e3);
            }
        }
        if (this.mComponents == null) {
            i = 1;
        } else {
            JSONObject jSONObject2 = new JSONObject();
            int i3 = 0;
            i = 1;
            while (true) {
                int i4 = i3;
                if (i4 < this.mComponents.length()) {
                    try {
                        AdobeStorageResourceItem adobeStorageResourceItem = (AdobeStorageResourceItem) this.mComponents.get(i4);
                        URI uri2 = adobeStorageResourceItem.href;
                        if (uri2 != null) {
                            jSONObject2.putOpt("href", uri2);
                        } else if (adobeStorageResourceItem.getPath() != null) {
                            i++;
                            String str2 = str + "" + i + "@adobe.com";
                            map.put(str2, adobeStorageResourceItem);
                            jSONObject2.putOpt("href", "cid:" + str2);
                        }
                    } catch (JSONException e4) {
                        AdobeLogger.log(Level.ERROR, TAG, "", e4);
                    }
                    i3 = i4 + 1;
                } else {
                    try {
                        break;
                    } catch (JSONException e5) {
                        AdobeLogger.log(Level.ERROR, TAG, "", e5);
                    }
                }
            }
            jSONObject.putOpt("components", jSONObject2);
        }
        if (this.mInputs != null) {
            JSONObject jSONObject3 = new JSONObject();
            Iterator<String> itKeys = this.mInputs.keys();
            while (true) {
                int i5 = i;
                if (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object obj = null;
                    try {
                        obj = this.mInputs.get(next);
                    } catch (JSONException e6) {
                        AdobeLogger.log(Level.ERROR, TAG, "", e6);
                    }
                    if (obj != null && (obj instanceof JSONArray)) {
                        JSONObject jSONObject4 = new JSONObject();
                        int i6 = 0;
                        int i7 = i5;
                        while (i6 < ((JSONArray) obj).length()) {
                            try {
                                Object obj2 = ((JSONArray) obj).get(i6);
                                URI uri3 = ((AdobeStorageResourceItem) obj2).href;
                                if (uri3 != null) {
                                    jSONObject4.putOpt("href", uri3);
                                    i2 = i7;
                                } else if (((AdobeStorageResourceItem) obj2).getPath() != null) {
                                    i2 = i7 + 1;
                                    try {
                                        jSONObject4.putOpt("href", "cid:" + (str + "" + i2 + "@adobe.com"));
                                    } catch (JSONException e7) {
                                        e = e7;
                                        i7 = i2;
                                        AdobeLogger.log(Level.ERROR, TAG, "", e);
                                        i = i7;
                                    }
                                } else {
                                    i2 = i7;
                                }
                                i6++;
                                i7 = i2;
                            } catch (JSONException e8) {
                                e = e8;
                            }
                        }
                        this.mInputs.putOpt(next, jSONObject4);
                        i = i7;
                    } else {
                        JSONObject jSONObject5 = new JSONObject();
                        if (obj instanceof AdobeStorageResourceItem) {
                            uri = ((AdobeStorageResourceItem) obj).href;
                        } else if (obj == null) {
                            uri = null;
                        } else {
                            try {
                                uri = new URI(obj.toString());
                            } catch (URISyntaxException e9) {
                                AdobeLogger.log(Level.ERROR, TAG, "", e9);
                                uri = null;
                            }
                        }
                        if (uri != null) {
                            try {
                                jSONObject5.putOpt("href", uri);
                                i = i5;
                            } catch (JSONException e10) {
                                AdobeLogger.log(Level.ERROR, TAG, "", e10);
                                i = i5;
                            }
                        } else if (!(obj instanceof AdobeStorageResourceItem) || ((AdobeStorageResourceItem) obj).getPath() == null) {
                            i = i5;
                        } else {
                            i5++;
                            String str3 = String.format("%s%d@adobe.com", str, Integer.valueOf(i5));
                            try {
                                map.put(str3, (AdobeStorageResourceItem) obj);
                                jSONObject5.putOpt("href", String.format("cid:%s", str3));
                                i = i5;
                            } catch (JSONException e11) {
                                AdobeLogger.log(Level.ERROR, TAG, "", e11);
                                i = i5;
                            }
                        }
                        try {
                            jSONObject3.putOpt(next, jSONObject5);
                        } catch (JSONException e12) {
                            AdobeLogger.log(Level.ERROR, TAG, "", e12);
                        }
                    }
                } else {
                    try {
                        break;
                    } catch (JSONException e13) {
                        AdobeLogger.log(Level.ERROR, TAG, "", e13);
                    }
                }
            }
            jSONObject.putOpt(INPUTS, jSONObject3);
        }
        if (this.mOutputDispositions != null) {
            JSONObject jSONObject6 = new JSONObject();
            Iterator<String> itKeys2 = this.mOutputDispositions.keys();
            while (itKeys2.hasNext()) {
                String next2 = itKeys2.next();
                AdobeImageOutputParameters adobeImageOutputParameters = null;
                try {
                    adobeImageOutputParameters = (AdobeImageOutputParameters) this.mOutputDispositions.get(next2);
                } catch (JSONException e14) {
                    AdobeLogger.log(Level.ERROR, TAG, "", e14);
                }
                if (adobeImageOutputParameters == null) {
                    AdobeLogger.log(Level.ERROR, TAG, "item is not AdobeImageOutputParameters");
                } else {
                    JSONObject jSONObject7 = new JSONObject();
                    switch (adobeImageOutputParameters.disposition) {
                        case AdobeImageOutputDispositionNone:
                            try {
                                jSONObject7.putOpt("disposition", "location");
                            } catch (JSONException e15) {
                                AdobeLogger.log(Level.ERROR, TAG, "", e15);
                            }
                            break;
                        case AdobeImageOutputDispositionReference:
                            try {
                                jSONObject7.putOpt("disposition", "location");
                            } catch (JSONException e16) {
                                AdobeLogger.log(Level.ERROR, TAG, "", e16);
                            }
                            break;
                    }
                    if (adobeImageOutputParameters.location != null) {
                        try {
                            jSONObject7.putOpt("location", adobeImageOutputParameters.location);
                        } catch (JSONException e17) {
                            AdobeLogger.log(Level.ERROR, TAG, "", e17);
                        }
                    }
                    if (adobeImageOutputParameters.overwrite) {
                        try {
                            jSONObject7.putOpt("If-Match", "!");
                        } catch (JSONException e18) {
                            AdobeLogger.log(Level.ERROR, TAG, "", e18);
                        }
                    }
                    if (adobeImageOutputParameters.mediaRange != null) {
                        try {
                            jSONObject7.putOpt("accept", adobeImageOutputParameters.mediaRange);
                        } catch (JSONException e19) {
                            AdobeLogger.log(Level.ERROR, TAG, "", e19);
                        }
                    }
                    if (jSONObject7.length() > 0) {
                        try {
                            jSONObject6.putOpt(next2, jSONObject7);
                        } catch (JSONException e20) {
                            AdobeLogger.log(Level.ERROR, TAG, "", e20);
                        }
                    }
                }
            }
            if (jSONObject6.length() > 0) {
                try {
                    jSONObject.putOpt(OUTPUTS, jSONObject6);
                } catch (JSONException e21) {
                    AdobeLogger.log(Level.ERROR, TAG, "", e21);
                }
            }
        }
        return jSONObject.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:?, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:?, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:?, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x013d, code lost:
    
        com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(com.adobe.creativesdk.foundation.internal.utils.logging.Level.ERROR, com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation.TAG, "assign local file FAIL");
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0178, code lost:
    
        com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(com.adobe.creativesdk.foundation.internal.utils.logging.Level.ERROR, com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation.TAG, "content-id not found for part " + r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01be, code lost:
    
        com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(com.adobe.creativesdk.foundation.internal.utils.logging.Level.ERROR, com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation.TAG, "content-type not found for part " + r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation parseMultipart(java.io.InputStream r20, java.lang.String r21, com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation r22) throws com.adobe.creativesdk.foundation.storage.AdobeAssetException, com.adobe.creativesdk.foundation.network.AdobeNetworkException {
        /*
            Method dump skipped, instruction units count: 744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation.parseMultipart(java.io.InputStream, java.lang.String, com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation):com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation");
    }

    private String getMultipartBoundary(String str) throws AdobeAssetException {
        Matcher matcher = Pattern.compile(".*boundary=(.*)", 2).matcher(str);
        ArrayList arrayList = new ArrayList();
        while (matcher.find()) {
            arrayList.add(matcher.group(1));
        }
        if (arrayList.size() != 1) {
            throw AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Invalid content type string");
        }
        return (String) arrayList.get(0);
    }

    public static AdobeImageOperation imageOperationWithImageServiceResponseFile(String str, AdobeImageOperation adobeImageOperation, AdobeNetworkHttpResponse adobeNetworkHttpResponse) throws AdobeAssetException, AdobeNetworkException, FileNotFoundException {
        return new AdobeImageOperation().initWithImageServiceResponseFile(str, adobeImageOperation, adobeNetworkHttpResponse);
    }

    private AdobeImageOperation initWithImageServiceResponseFile(String str, AdobeImageOperation adobeImageOperation, AdobeNetworkHttpResponse adobeNetworkHttpResponse) throws AdobeAssetException, AdobeNetworkException, FileNotFoundException {
        AdobeImageOperation multipart = null;
        if (adobeNetworkHttpResponse == null || adobeNetworkHttpResponse.getHeaders() == null) {
            return null;
        }
        String str2 = null;
        for (String str3 : adobeNetworkHttpResponse.getHeaders().keySet()) {
            str2 = str3.compareToIgnoreCase("content-type") == 0 ? adobeNetworkHttpResponse.getHeaders().get(str3).get(0) : str2;
        }
        if (str2 == null) {
            throw AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Content type header not specified");
        }
        AdobeLogger.log(Level.DEBUG, TAG, "content-type " + str2);
        if (str2.compareToIgnoreCase("application/vnd.adobe.image-operation+json") == 0) {
            try {
                File file = new File(str);
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[(int) file.length()];
                if (file.length() != fileInputStream.read(bArr)) {
                    AdobeLogger.log(Level.ERROR, TAG, "inputstream read FAIL");
                }
                String str4 = new String(bArr, "UTF-8");
                fileInputStream.close();
                AdobeLogger.log(Level.DEBUG, "", "response : " + str4);
                return initWithJSONResponseData(str4);
            } catch (IOException e2) {
                AdobeLogger.log(Level.ERROR, TAG, "", e2);
            }
        } else if (str2.toLowerCase().contains("multipart/related")) {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
                try {
                    multipart = parseMultipart(bufferedInputStream, str2, adobeImageOperation);
                } catch (Exception e3) {
                    AdobeLogger.log(Level.ERROR, TAG, "", e3);
                } finally {
                    IOUtils.closeQuietly((InputStream) bufferedInputStream);
                }
                return multipart;
            } catch (FileNotFoundException e4) {
                AdobeLogger.log(Level.ERROR, TAG, "", e4);
                throw e4;
            }
        }
        AdobeLogger.log(Level.ERROR, TAG, "unhandled content-type " + str2);
        return null;
    }

    private AdobeImageOperation initWithJSONResponseData(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.mOptions = jSONObject.has(OPTIONS) ? jSONObject.getJSONObject(OPTIONS) : null;
            this.mResults = jSONObject.has(RESPONSE) ? jSONObject.getJSONObject(RESPONSE) : null;
            if (jSONObject.has(INPUTS)) {
                this.mInputs = convertImageServiceResponseFilesToStorageResourceItems(jSONObject.getJSONObject(INPUTS));
            } else {
                AdobeLogger.log(Level.ERROR, TAG, "inputs !found in JSON");
                this.mInputs = null;
            }
            if (jSONObject.has(OUTPUTS)) {
                this.mOutputs = convertImageServiceResponseFilesToStorageResourceItems(jSONObject.getJSONObject(OUTPUTS));
                return this;
            }
            AdobeLogger.log(Level.ERROR, TAG, "outputs !found in JSON");
            this.mOutputs = null;
            return this;
        } catch (JSONException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
            return null;
        }
    }

    private JSONObject convertImageServiceResponseFilesToStorageResourceItems(JSONObject jSONObject) {
        String str;
        AdobeLogger.log(Level.DEBUG, TAG, "replacing with storage items...");
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            AdobeLogger.log(Level.DEBUG, TAG, "key : " + next);
            try {
                Object obj = jSONObject.get(next);
                if (obj instanceof JSONArray) {
                    JSONArray jSONArray = new JSONArray();
                    int i = 0;
                    while (true) {
                        try {
                            int i2 = i;
                            if (i2 >= ((JSONArray) obj).length()) {
                                break;
                            }
                            JSONObject jSONObject3 = (JSONObject) ((JSONArray) obj).get(i2);
                            if (jSONObject3.has("href")) {
                                str = (String) jSONObject3.get("href");
                            } else if (jSONObject3.has("location")) {
                                str = (String) jSONObject3.get("location");
                            } else {
                                AdobeLogger.log(Level.ERROR, TAG, "href/location not found in input.");
                                str = "";
                            }
                            AdobeLogger.log(Level.DEBUG, TAG, "create storage item for " + str);
                            AdobeStorageResourceItem adobeStorageResourceItem = new AdobeStorageResourceItem();
                            adobeStorageResourceItem.href = new URI(str);
                            jSONArray.put(adobeStorageResourceItem);
                            i = i2 + 1;
                        } catch (URISyntaxException | JSONException e2) {
                            AdobeLogger.log(Level.ERROR, TAG, "", e2);
                        }
                    }
                    jSONObject2.putOpt(next, jSONArray);
                } else if (obj instanceof JSONObject) {
                    JSONObject jSONObject4 = (JSONObject) obj;
                    String str2 = "";
                    try {
                        if (jSONObject4.has("href")) {
                            str2 = (String) jSONObject4.get("href");
                        } else if (jSONObject4.has("location")) {
                            str2 = (String) jSONObject4.get("location");
                        } else {
                            AdobeLogger.log(Level.ERROR, TAG, "href/location not found in input.");
                        }
                        AdobeLogger.log(Level.DEBUG, TAG, "create storage item for " + str2);
                        AdobeStorageResourceItem adobeStorageResourceItem2 = new AdobeStorageResourceItem();
                        adobeStorageResourceItem2.href = new URI(str2);
                        jSONObject2.putOpt(next, adobeStorageResourceItem2);
                    } catch (URISyntaxException | JSONException e3) {
                        AdobeLogger.log(Level.ERROR, TAG, "", e3);
                    }
                } else {
                    AdobeLogger.log(Level.ERROR, TAG, "unknown type of item.");
                }
            } catch (JSONException e4) {
                AdobeLogger.log(Level.ERROR, TAG, "", e4);
            }
        }
        return jSONObject2;
    }

    private String getCIDFilename(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(":|@");
        if (strArrSplit.length == 2) {
            return strArrSplit[0];
        }
        if (strArrSplit.length == 3) {
            return strArrSplit[1];
        }
        return strArrSplit[0];
    }

    private boolean addPathForCID(AdobeStorageResourceItem adobeStorageResourceItem, AdobeImageOutputParameters adobeImageOutputParameters, HashMap<String, String> map) throws AdobeNetworkException {
        URI uri = adobeStorageResourceItem.href;
        if (uri == null || !uri.toString().startsWith("cid:")) {
            return false;
        }
        String cIDFilename = getCIDFilename(uri.toString());
        if (adobeImageOutputParameters.path == null) {
            HashMap map2 = new HashMap();
            map2.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "No local file path provided to output result images to");
            throw new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest, map2);
        }
        AdobeLogger.log(Level.DEBUG, TAG, cIDFilename + " : " + adobeImageOutputParameters.path);
        map.put(cIDFilename, adobeImageOutputParameters.path);
        return true;
    }

    private HashMap<String, String> assignALocalFilePathToEachContentID(AdobeImageOperation adobeImageOperation) throws AdobeNetworkException {
        AdobeImageOutputParameters adobeImageOutputParameters;
        Object obj;
        AdobeLogger.log(Level.DEBUG, TAG, "assign local file...");
        HashMap<String, String> map = new HashMap<>();
        Iterator<String> itKeys = this.mOutputs.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                adobeImageOutputParameters = (AdobeImageOutputParameters) adobeImageOperation.mOutputDispositions.get(next);
            } catch (JSONException e2) {
                AdobeLogger.log(Level.ERROR, TAG, "", e2);
                adobeImageOutputParameters = null;
            }
            if (adobeImageOutputParameters == null) {
                AdobeLogger.log(Level.ERROR, TAG, "output params NULL for " + next);
            } else {
                try {
                    obj = this.mOutputs.get(next);
                } catch (JSONException e3) {
                    AdobeLogger.log(Level.ERROR, TAG, "", e3);
                    obj = null;
                }
                if (obj instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) obj;
                    AdobeLogger.log(Level.DEBUG, TAG, "outputs are JSONArray len " + jSONArray.length());
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < jSONArray.length()) {
                            try {
                                addPathForCID((AdobeStorageResourceItem) jSONArray.get(i2), adobeImageOutputParameters, map);
                            } catch (JSONException e4) {
                                AdobeLogger.log(Level.ERROR, TAG, "not a storage item.", e4);
                            }
                            i = i2 + 1;
                        }
                    }
                } else if (obj instanceof AdobeStorageResourceItem) {
                    AdobeLogger.log(Level.DEBUG, TAG, "outputs is AdobeStorageResourceItem");
                    addPathForCID((AdobeStorageResourceItem) obj, adobeImageOutputParameters, map);
                } else {
                    AdobeLogger.log(Level.ERROR, TAG, "unknown resource item ");
                    throw new ClassCastException();
                }
            }
        }
        return map;
    }

    private boolean fixupOutputResourceItems(HashMap<String, OutputFileInfo> map) {
        URI uri;
        if (this.mOutputs == null) {
            AdobeLogger.log(Level.WARN, TAG, "mOutputs null");
            return false;
        }
        Iterator<String> itKeys = this.mOutputs.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                Object obj = this.mOutputs.get(next);
                if (obj instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) obj;
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            URI uri2 = ((AdobeStorageResourceItem) jSONArray.get(i)).href;
                            if (uri2 != null && uri2.toString().startsWith("cid:")) {
                                String cIDFilename = getCIDFilename(uri2.toString());
                                OutputFileInfo outputFileInfo = map.get(cIDFilename);
                                try {
                                    jSONArray.put(i, AdobeStorageResourceItem.resourceFromPath(outputFileInfo.path, outputFileInfo.type));
                                    AdobeLogger.log(Level.DEBUG, TAG, "replaced item for " + cIDFilename + ":" + outputFileInfo.path);
                                } catch (JSONException e2) {
                                    AdobeLogger.log(Level.ERROR, TAG, "", e2);
                                }
                            }
                        } catch (JSONException e3) {
                            AdobeLogger.log(Level.ERROR, TAG, "", e3);
                        }
                    }
                } else if ((obj instanceof AdobeStorageResourceItem) && (uri = ((AdobeStorageResourceItem) obj).href) != null && uri.toString().startsWith("cid:")) {
                    String cIDFilename2 = getCIDFilename(uri.toString());
                    OutputFileInfo outputFileInfo2 = map.get(cIDFilename2);
                    try {
                        this.mOutputs.putOpt(next, AdobeStorageResourceItem.resourceFromPath(outputFileInfo2.path, outputFileInfo2.type));
                        AdobeLogger.log(Level.DEBUG, TAG, "replaced item for " + cIDFilename2);
                    } catch (JSONException e4) {
                        AdobeLogger.log(Level.ERROR, TAG, "", e4);
                    }
                }
            } catch (JSONException e5) {
                AdobeLogger.log(Level.ERROR, TAG, "", e5);
            }
        }
        return true;
    }

    public static String extractPartHeaderDataFromInputStream(AdobeSearchInptStreamUtil adobeSearchInptStreamUtil, String str, String str2) throws AdobeAssetException {
        String string;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        boolean zCopyInputIntoStreamUntilMatchData = adobeSearchInptStreamUtil.copyInputIntoStreamUntilMatchData(byteArrayOutputStream, str);
        try {
            byteArrayOutputStream.close();
        } catch (IOException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
        }
        try {
            string = byteArrayOutputStream.toString("UTF-8");
        } catch (UnsupportedEncodingException e3) {
            AdobeLogger.log(Level.ERROR, TAG, "", e3);
            string = null;
        }
        if (zCopyInputIntoStreamUntilMatchData) {
            return string;
        }
        if (string != null && string.indexOf(str2) != -1) {
            throw AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Multipart parsing error");
        }
        if (adobeSearchInptStreamUtil.copyInputIntoStreamUntilMatchData(null, str2)) {
            throw AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Multipart parsing error");
        }
        return null;
    }

    public static String extractContentIDFromHeaderData(String str) throws AdobeAssetException {
        Matcher matcher = Pattern.compile("Content-ID:.*<(.*)>", 2).matcher(str);
        ArrayList arrayList = new ArrayList();
        while (matcher.find()) {
            arrayList.add(matcher.group(1));
        }
        if (arrayList.size() != 1) {
            throw AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Cannot find content id header");
        }
        return (String) arrayList.get(0);
    }

    public static String extractContentTypeFromHeaderData(String str) {
        Matcher matcher = Pattern.compile("Content-Type:(.*)", 2).matcher(str);
        ArrayList arrayList = new ArrayList();
        while (matcher.find()) {
            arrayList.add(matcher.group(1));
        }
        if (arrayList.size() != 1) {
            AdobeLogger.log(Level.ERROR, TAG, "content type not found");
            return null;
        }
        return ((String) arrayList.get(0)).replaceAll("\\s+", "");
    }

    private static String getOuptutFileFullPathForContentID(String str, HashMap<String, String> map, String str2) throws AdobeAssetException {
        String str3 = map.get(str);
        if (str3 == null) {
            AdobeLogger.log(Level.DEBUG, TAG, "path not found for " + str);
            return null;
        }
        AdobeLogger.log(Level.DEBUG, TAG, "path : " + str3);
        File file = new File(str3);
        if (file.exists() && file.isDirectory()) {
            if (AdobeLibraryCompositeConstantsInternal.AdobeLibraryRenditionContentTypeJPG.equalsIgnoreCase(str2) || "image/jpeg".equalsIgnoreCase(str2)) {
                return new File(str3, String.format("%s.jpg", str)).toString();
            }
            if ("image/png".equalsIgnoreCase(str2)) {
                return new File(str3, String.format("%s.png", str)).toString();
            }
            if ("image/gif".equalsIgnoreCase(str2)) {
                return new File(str3, String.format("%s.gif", str)).toString();
            }
            if (AdobeAssetFileExtensions.kAdobeMimeTypeTIFF.equalsIgnoreCase(str2)) {
                return new File(str3, String.format("%s.tiff", str)).toString();
            }
            if ("application/vnd.adobe.nnf".equalsIgnoreCase(str2)) {
                return new File(str3, String.format("%s.nnf", str)).toString();
            }
            AdobeLogger.log(Level.ERROR, TAG, "unsupported content type " + str2 + " " + str2.compareToIgnoreCase("image/jpeg"));
            throw AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "Unsupported content type header " + str2);
        }
        AdobeLogger.log(Level.ERROR, TAG, str3 + " exists: " + file.exists() + " isdir: " + file.isDirectory());
        return str3;
    }

    private static String genRandString() {
        return AdobeStorageUtils.generateUuid();
    }

    void setInputs(JSONObject jSONObject) {
        this.mInputs = jSONObject;
    }

    void setOptions(JSONObject jSONObject) {
        this.mOptions = jSONObject;
    }

    void setOutputDispositions(JSONObject jSONObject) {
        this.mOutputDispositions = jSONObject;
    }

    JSONObject getInputs() {
        return this.mInputs;
    }

    private String getUTF8Encoding(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            AdobeLogger.log(Level.ERROR, TAG, "", e2);
            return null;
        }
    }
}
