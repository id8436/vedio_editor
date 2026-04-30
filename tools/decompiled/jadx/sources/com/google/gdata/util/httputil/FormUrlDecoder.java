package com.google.gdata.util.httputil;

import com.google.common.collect.Lists;
import com.google.gdata.util.common.base.StringUtil;
import com.google.gdata.util.parser.Chset;
import com.google.gdata.util.parser.Parser;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import java.util.LinkedList;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class FormUrlDecoder {
    private static Parser<Result> parser;

    @Deprecated
    public interface Callback {
        void handleParameter(String str, String str2);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class Result {
        String encoding;
        LinkedList<Parameter> params = Lists.newLinkedList();

        public Result(String str) {
            this.encoding = str == null ? "ISO-8859-1" : str;
        }
    }

    private FormUrlDecoder() {
    }

    @Deprecated
    public static void parseWithCallback(String str, String str2, Callback callback) {
        if (!StringUtil.isEmpty(str)) {
            Result result = new Result(str2);
            parser.parse(str, result);
            for (Parameter parameter : result.params) {
                callback.handleParameter(parameter.name, parameter.value);
            }
        }
    }

    @Deprecated
    public static ParamMap parse(String str, ParamMap paramMap, String str2) {
        if ("".equals(str)) {
            return paramMap == null ? new ParamMap() : paramMap;
        }
        final AtomicReference atomicReference = new AtomicReference(paramMap);
        parseWithCallback(str, str2, new Callback() { // from class: com.google.gdata.util.httputil.FormUrlDecoder.1
            @Override // com.google.gdata.util.httputil.FormUrlDecoder.Callback
            public void handleParameter(String str3, String str4) {
                ParamMap paramMap2 = (ParamMap) atomicReference.get();
                if (paramMap2 == null) {
                    paramMap2 = new ParamMap();
                    atomicReference.set(paramMap2);
                }
                paramMap2.append(str3, str4);
            }
        });
        return (ParamMap) atomicReference.get();
    }

    private static String getCanonicalEncodingName(String str) {
        if (str != null && str.length() > 0) {
            try {
                return Charset.forName(str).name();
            } catch (IllegalCharsetNameException e2) {
                return str;
            } catch (UnsupportedCharsetException e3) {
                return str;
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String decodeString(char[] cArr, int i, int i2, String str) {
        String strDecode;
        String str2 = new String(cArr, i, i2 - i);
        try {
            if (requiresByteLevelDecoding(str)) {
                strDecode = new String(URLDecoder.decode(str2, "ISO-8859-1").getBytes("ISO-8859-1"), str);
            } else {
                strDecode = URLDecoder.decode(str2, str);
            }
            return strDecode;
        } catch (UnsupportedEncodingException e2) {
            return str2;
        } catch (IllegalArgumentException e3) {
            return str2;
        }
    }

    private static boolean requiresByteLevelDecoding(String str) {
        String upperCase = getCanonicalEncodingName(str).toUpperCase();
        return upperCase.endsWith("SHIFT_JIS") || upperCase.endsWith("WINDOWS-31J");
    }

    /* JADX INFO: loaded from: classes3.dex */
    class NameAction implements com.google.gdata.util.parser.Callback<Result> {
        private NameAction() {
        }

        @Override // com.google.gdata.util.parser.Callback
        public void handle(char[] cArr, int i, int i2, Result result) {
            Parameter parameter = new Parameter();
            parameter.name = FormUrlDecoder.decodeString(cArr, i, i2, result.encoding);
            result.params.addLast(parameter);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class ValueAction implements com.google.gdata.util.parser.Callback<Result> {
        private ValueAction() {
        }

        @Override // com.google.gdata.util.parser.Callback
        public void handle(char[] cArr, int i, int i2, Result result) {
            result.params.getLast().value = FormUrlDecoder.decodeString(cArr, i, i2, result.encoding);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class Parameter {
        String name;
        String value;

        private Parameter() {
            this.name = null;
            this.value = "";
        }
    }

    static {
        Chset chsetDifference = Chset.difference(Chset.ANYCHAR, new Chset("&="));
        Chset chsetDifference2 = Chset.difference(Chset.ANYCHAR, new Chset("&"));
        parser = Parser.sequence(chsetDifference.star().action(new NameAction()), Parser.sequence(new Chset('='), chsetDifference2.plus().action(new ValueAction()).optional()).optional()).list(new Chset('&')).optional();
    }
}
