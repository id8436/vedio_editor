package com.google.gdata.data.appsforyourdomain;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.io.StringReader;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.mortbay.jetty.MimeTypes;
import org.w3c.dom.NamedNodeMap;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes3.dex */
public class AppsForYourDomainException extends ServiceException {
    protected static DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
    protected AppsForYourDomainErrorCode errorCode;
    protected String invalidInput;

    public AppsForYourDomainException(AppsForYourDomainErrorCode appsForYourDomainErrorCode, String str, int i) {
        super("AppsForYourDomainException");
        if (appsForYourDomainErrorCode == null) {
            if (i >= 400 && i < 500) {
                this.errorCode = AppsForYourDomainErrorCode.InvalidValue;
            } else {
                this.errorCode = AppsForYourDomainErrorCode.UnknownError;
            }
        } else {
            this.errorCode = appsForYourDomainErrorCode;
        }
        this.invalidInput = str;
    }

    public AppsForYourDomainException(AppsForYourDomainErrorCode appsForYourDomainErrorCode, String str) {
        this(appsForYourDomainErrorCode, str, 0);
    }

    public AppsForYourDomainException(AppsForYourDomainErrorCode appsForYourDomainErrorCode) {
        this(appsForYourDomainErrorCode, "");
    }

    public AppsForYourDomainException() {
        this(AppsForYourDomainErrorCode.UnknownError);
    }

    public AppsForYourDomainErrorCode getErrorCode() {
        return this.errorCode;
    }

    public String getInvalidInput() {
        return this.invalidInput;
    }

    @Override // com.google.gdata.util.ServiceException, java.lang.Throwable
    public String toString() {
        return this.errorCode.toString() + ": " + this.invalidInput;
    }

    public static AppsForYourDomainException narrow(ServiceException serviceException) {
        if (serviceException.getResponseContentType() == null || serviceException.getResponseBody() == null) {
            return null;
        }
        if (serviceException.getHttpErrorCodeOverride() == 502) {
            return new AppsForYourDomainException(AppsForYourDomainErrorCode.ServerBusy, "The server is busy and could not complete your request.  Please try again in 30 seconds.");
        }
        if (!serviceException.getResponseContentType().equals(new ContentType(MimeTypes.TEXT_XML)) || !serviceException.getResponseBody().contains("AppsForYourDomainErrors")) {
            return null;
        }
        try {
            NamedNodeMap attributes = factory.newDocumentBuilder().parse(new InputSource(new StringReader(serviceException.getResponseBody()))).getDocumentElement().getElementsByTagName(Adobe360Constants.kAdobe360SatusError).item(0).getAttributes();
            int i = Integer.parseInt(attributes.getNamedItem("errorCode").getNodeValue());
            return new AppsForYourDomainException(AppsForYourDomainErrorCode.getEnumFromInt(Integer.valueOf(i)), attributes.getNamedItem("invalidInput").getNodeValue(), serviceException.getHttpErrorCodeOverride());
        } catch (IOException e2) {
            return null;
        } catch (NumberFormatException e3) {
            return null;
        } catch (ParserConfigurationException e4) {
            return null;
        } catch (SAXException e5) {
            return null;
        }
    }
}
