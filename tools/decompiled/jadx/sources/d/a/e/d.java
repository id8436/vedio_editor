package d.a.e;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.google.gdata.client.spreadsheet.CellQuery;
import com.google.gdata.data.ILink;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import org.mortbay.util.URIUtil;

/* JADX INFO: compiled from: Hpack.java */
/* JADX INFO: loaded from: classes3.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c[] f4366a = {new c(c.f4364f, ""), new c(c.f4361c, "GET"), new c(c.f4361c, "POST"), new c(c.f4362d, URIUtil.SLASH), new c(c.f4362d, "/index.html"), new c(c.f4363e, "http"), new c(c.f4363e, "https"), new c(c.f4360b, "200"), new c(c.f4360b, "204"), new c(c.f4360b, "206"), new c(c.f4360b, "304"), new c(c.f4360b, "400"), new c(c.f4360b, "404"), new c(c.f4360b, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c(AdobeStorageSession.CONTENT_LENGTH, ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c(CellQuery.RANGE, ""), new c("referer", ""), new c("refresh", ""), new c(AdobeCommunityConstants.AdobeCommunityResponseHeadersKeyRetryAfter, ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c(ILink.Rel.VIA, ""), new c("www-authenticate", "")};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Map<e.k, Integer> f4367b = a();

    private static Map<e.k, Integer> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f4366a.length);
        for (int i = 0; i < f4366a.length; i++) {
            if (!linkedHashMap.containsKey(f4366a[i].f4365g)) {
                linkedHashMap.put(f4366a[i].f4365g, Integer.valueOf(i));
            }
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    static e.k a(e.k kVar) throws IOException {
        int iG = kVar.g();
        for (int i = 0; i < iG; i++) {
            byte bA = kVar.a(i);
            if (bA >= 65 && bA <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + kVar.a());
            }
        }
        return kVar;
    }
}
