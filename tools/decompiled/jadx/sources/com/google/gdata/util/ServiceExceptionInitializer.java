package com.google.gdata.util;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import com.google.gdata.util.ErrorContent;
import com.google.gdata.util.XmlParser;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.lang.reflect.InvocationTargetException;
import java.net.HttpURLConnection;
import java.util.Collections;
import java.util.zip.GZIPInputStream;
import org.mortbay.jetty.HttpHeaderValues;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceExceptionInitializer {
    private ServiceException currentException = null;
    private final ServiceException initialException;

    public ServiceExceptionInitializer(ServiceException serviceException) {
        this.initialException = serviceException;
    }

    public void parse(HttpURLConnection httpURLConnection) throws ParseException, IOException {
        StringBuilder sb;
        this.initialException.httpErrorCodeOverride = httpURLConnection.getResponseCode();
        this.initialException.httpHeaders = Collections.unmodifiableMap(httpURLConnection.getHeaderFields());
        ContentType contentType = new ContentType(httpURLConnection.getContentType());
        this.initialException.responseContentType = contentType;
        int contentLength = httpURLConnection.getContentLength();
        if (contentLength < 0) {
            sb = new StringBuilder();
        } else if (contentLength > 0) {
            sb = new StringBuilder(contentLength);
        } else {
            return;
        }
        InputStream errorStream = this.initialException.httpErrorCodeOverride >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
        if (errorStream != null) {
            if (HttpHeaderValues.GZIP.equalsIgnoreCase(httpURLConnection.getContentEncoding())) {
                errorStream = new GZIPInputStream(errorStream);
            }
            try {
                String str = contentType.getAttributes().get(ContentType.ATTR_CHARSET);
                if (str == null) {
                    str = "iso8859-1";
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, str));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        sb.append(line);
                        sb.append('\n');
                    } else {
                        String string = sb.toString();
                        this.initialException.responseBody = string;
                        parse(contentType, string);
                        return;
                    }
                }
            } finally {
                errorStream.close();
            }
        }
    }

    public void parse(ContentType contentType, String str) throws ParseException {
        if (ContentType.GDATA_ERROR.equals(contentType)) {
            try {
                new XmlParser().parse(new StringReader(str), new ErrorsHandler(), "http://schemas.google.com/g/2005", "errors");
            } catch (IOException e2) {
                throw new RuntimeException("Impossible parser I/O", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ServiceException nextException() {
        if (this.currentException == null) {
            this.currentException = this.initialException;
            return this.currentException;
        }
        try {
            this.currentException = (ServiceException) this.initialException.getClass().getConstructor(String.class).newInstance(this.initialException.getMessage());
            this.initialException.addSibling(this.currentException);
            return this.currentException;
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException(e2);
        } catch (InstantiationException e3) {
            throw new IllegalStateException(e3);
        } catch (NoSuchMethodException e4) {
            throw new IllegalStateException(e4);
        } catch (InvocationTargetException e5) {
            throw new IllegalStateException(e5);
        }
    }

    class ErrorsHandler extends XmlParser.ElementHandler {
        private ErrorsHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (!"http://schemas.google.com/g/2005".equals(str) || !Adobe360Constants.kAdobe360SatusError.equals(str2)) {
                return super.getChildHandler(str, str2, attributes);
            }
            ServiceExceptionInitializer.this.nextException();
            return new ErrorHandler();
        }
    }

    class ErrorHandler extends XmlParser.ElementHandler {
        private ErrorHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if ("http://schemas.google.com/g/2005".equals(str)) {
                if ("domain".equals(str2)) {
                    return new DomainHandler();
                }
                if (ProjectHostingService.PROJECTHOSTING_SERVICE.equals(str2)) {
                    return new CodeHandler();
                }
                if ("location".equals(str2)) {
                    return new LocationHandler();
                }
                if ("internalReason".equals(str2)) {
                    return new InternalReasonHandler();
                }
                if ("extendedHelp".equals(str2)) {
                    return new ExtendedHelpHandler();
                }
                if ("sendReport".equals(str2)) {
                    return new SendReportHandler();
                }
                if ("debugInfo".equals(str2)) {
                    return new DebugInfoHandler();
                }
            }
            return super.getChildHandler(str, str2, attributes);
        }
    }

    class DomainHandler extends XmlParser.ElementHandler {
        private DomainHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            ServiceExceptionInitializer.this.currentException.errorElement.setDomain(this.value);
        }
    }

    class CodeHandler extends XmlParser.ElementHandler {
        private CodeHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            ServiceExceptionInitializer.this.currentException.errorElement.setCode(this.value);
        }
    }

    class LocationHandler extends XmlParser.ElementHandler {
        private ErrorContent.LocationType locationType;

        private LocationHandler() {
            this.locationType = ErrorContent.LocationType.OTHER;
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if ("type".equals(str2)) {
                this.locationType = ErrorContent.LocationType.fromString(str3);
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            ServiceExceptionInitializer.this.currentException.errorElement.setLocation(this.value, this.locationType);
        }
    }

    class InternalReasonHandler extends XmlParser.ElementHandler {
        private InternalReasonHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            ServiceExceptionInitializer.this.currentException.errorElement.setInternalReason(this.value);
        }
    }

    class ExtendedHelpHandler extends XmlParser.ElementHandler {
        private ExtendedHelpHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            ServiceExceptionInitializer.this.currentException.errorElement.setExtendedHelp(this.value);
        }
    }

    class SendReportHandler extends XmlParser.ElementHandler {
        private SendReportHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            ServiceExceptionInitializer.this.currentException.errorElement.setSendReport(this.value);
        }
    }

    class DebugInfoHandler extends XmlParser.ElementHandler {
        private DebugInfoHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            ServiceExceptionInitializer.this.currentException.errorElement.setDebugInfo(this.value);
        }
    }
}
