package com.google.gdata.data.youtube;

import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import java.io.IOException;
import java.io.InputStream;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class FormUploadToken {
    private final String token;
    private final String url;

    public FormUploadToken(String str, String str2) {
        this.url = str;
        this.token = str2;
    }

    public String getUrl() {
        return this.url;
    }

    public String getToken() {
        return this.token;
    }

    public static FormUploadToken parse(InputStream inputStream) throws ParseException, IOException {
        ResponseElementHandler responseElementHandler = new ResponseElementHandler();
        new XmlParser().parse(inputStream, responseElementHandler, "", AdobeImageOperation.RESPONSE);
        if (responseElementHandler.getUrl() == null) {
            throw new ParseException("Missing or empty 'url' element in response");
        }
        if (responseElementHandler.getToken() == null) {
            throw new ParseException("Missing or empty 'token' element in response");
        }
        return new FormUploadToken(responseElementHandler.getUrl(), responseElementHandler.getToken());
    }

    class ResponseElementHandler extends XmlParser.ElementHandler {
        private String token;
        private String url;

        private ResponseElementHandler() {
        }

        public String getUrl() {
            return this.url;
        }

        public String getToken() {
            return this.token;
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if ("".equals(str)) {
                if ("url".equals(str2)) {
                    return new XmlParser.ElementHandler() { // from class: com.google.gdata.data.youtube.FormUploadToken.ResponseElementHandler.1
                        @Override // com.google.gdata.util.XmlParser.ElementHandler
                        public void processEndElement() throws ParseException {
                            ResponseElementHandler.this.url = this.value;
                        }
                    };
                }
                if ("token".equals(str2)) {
                    return new XmlParser.ElementHandler() { // from class: com.google.gdata.data.youtube.FormUploadToken.ResponseElementHandler.2
                        @Override // com.google.gdata.util.XmlParser.ElementHandler
                        public void processEndElement() throws ParseException {
                            ResponseElementHandler.this.token = this.value;
                        }
                    };
                }
            }
            return super.getChildHandler(str, str2, attributes);
        }
    }
}
