package com.google.gdata.wireformats;

import com.google.gdata.model.Element;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.ErrorContent;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.ServiceException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ContentValidationException extends ServiceException {
    protected ValidationContext vc;

    public ContentValidationException(String str, ValidationContext validationContext) {
        super(str);
        this.vc = validationContext;
        setResponse(ContentType.TEXT_PLAIN, validationContext.toString());
    }

    public ValidationContext getContext() {
        return this.vc;
    }

    public ParseException toParseException() {
        ParseException parseException;
        ParseException parseException2 = null;
        for (Map.Entry<Element, List<ErrorContent>> entry : this.vc.getErrors().entrySet()) {
            String string = entry.getKey().getElementKey().getId().toString();
            Iterator<ErrorContent> it = entry.getValue().iterator();
            while (it.hasNext()) {
                ParseException parseException3 = new ParseException(it.next());
                parseException3.setLocation(string);
                if (parseException2 == null) {
                    parseException = parseException3;
                } else {
                    parseException2.addSibling(parseException3);
                    parseException = parseException2;
                }
                parseException2 = parseException;
            }
        }
        return parseException2;
    }
}
