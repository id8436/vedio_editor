package javax.servlet.http;

import java.util.Enumeration;

/* JADX INFO: loaded from: classes3.dex */
public interface HttpSessionContext {
    Enumeration getIds();

    HttpSession getSession(String str);
}
