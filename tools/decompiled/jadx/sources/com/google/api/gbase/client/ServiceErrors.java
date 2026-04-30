package com.google.api.gbase.client;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestParameters;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.data.HtmlTextConstruct;
import com.google.gdata.data.batch.BatchStatus;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.XmlParser;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.mortbay.jetty.MimeTypes;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceErrors {
    private static final ContentType DEFAULT_CONTENT_TYPE = new ContentType(MimeTypes.TEXT_PLAIN);
    private List<ServiceError> requestErrors = new ArrayList();
    private List<ServiceError> dataErrors = new ArrayList();

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        appendErrors(stringBuffer, this.requestErrors);
        appendErrors(stringBuffer, this.dataErrors);
        return stringBuffer.toString();
    }

    private static void appendErrors(StringBuffer stringBuffer, List<ServiceError> list) {
        for (ServiceError serviceError : list) {
            if (stringBuffer.length() > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(serviceError.toString());
        }
    }

    public ServiceErrors(ServiceException serviceException) {
        addErrors(serviceException);
    }

    public ServiceErrors(BatchStatus batchStatus) {
        addErrors(batchStatus);
    }

    public ServiceErrors() {
    }

    public void addErrors(ServiceException serviceException) {
        addErrors(serviceException.getMessage(), serviceException.getResponseContentType(), serviceException.getResponseBody());
    }

    public void addErrors(BatchStatus batchStatus) {
        addErrors(batchStatus.getReason(), batchStatus.getContentType(), batchStatus.getContent());
    }

    private void addErrors(String str, ContentType contentType, String str2) {
        if (str2 == null) {
            addError(new ServiceError(str));
            return;
        }
        if (contentType == null) {
            contentType = DEFAULT_CONTENT_TYPE;
        }
        if (contentType.toString().startsWith(AdobeNetworkHttpRequestParameters.HTTP_CONTENT_TYPE_APPLICATION_XML)) {
            try {
                new XmlParser().parse(new StringReader(str2), new ErrorsElementHandler(), "", "errors");
                return;
            } catch (ParseException e2) {
                addInvalidXmlServiceError(str, str2);
                return;
            } catch (IOException e3) {
                addInvalidXmlServiceError(str, str2);
                return;
            }
        }
        if (contentType.toString().startsWith(MimeTypes.TEXT_HTML)) {
            addError(new ServiceError(new HtmlTextConstruct(str2).getPlainText()));
        } else {
            addError(new ServiceError(str2));
        }
    }

    private void addInvalidXmlServiceError(String str, String str2) {
        addError(new ServiceError(str + "(badly formatted xml error message: " + str2));
    }

    public void addError(ServiceError serviceError) {
        if ("data".equals(serviceError.getType())) {
            this.dataErrors.add(serviceError);
        } else {
            this.requestErrors.add(serviceError);
        }
    }

    public List<? extends ServiceError> getAllErrors() {
        ArrayList arrayList = new ArrayList(this.requestErrors.size() + this.dataErrors.size());
        arrayList.addAll(this.requestErrors);
        arrayList.addAll(this.dataErrors);
        return arrayList;
    }

    public List<? extends ServiceError> getRequestErrors() {
        return this.requestErrors;
    }

    public Collection<? extends ServiceError> getDataErrors() {
        return this.dataErrors;
    }

    public Set<? extends String> getErrorFields() {
        HashSet hashSet = new HashSet();
        Iterator<ServiceError> it = this.dataErrors.iterator();
        while (it.hasNext()) {
            String field = it.next().getField();
            if (field != null) {
                hashSet.add(field);
            }
        }
        return hashSet;
    }

    public List<? extends ServiceError> getFieldErrors(String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<ServiceError> it = this.dataErrors.iterator();
        while (true) {
            ArrayList arrayList2 = arrayList;
            if (it.hasNext()) {
                ServiceError next = it.next();
                if (equalsMaybeNull(str, next.getField())) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(next);
                }
                arrayList = arrayList2;
            } else {
                return arrayList2;
            }
        }
    }

    private static boolean equalsMaybeNull(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    class ErrorsElementHandler extends XmlParser.ElementHandler {
        private ErrorsElementHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            return Adobe360Constants.kAdobe360SatusError.equals(str2) ? ServiceErrors.this.new ErrorElementHandler(attributes) : super.getChildHandler(str, str2, attributes);
        }
    }

    class ErrorElementHandler extends XmlParser.ElementHandler {
        public ErrorElementHandler(Attributes attributes) {
            ServiceErrors.this.addError(new ServiceError(attributes.getValue("type"), attributes.getValue(BehanceSDKUrlUtil.PARAM_KEY_FIELD), attributes.getValue("reason")));
        }
    }
}
