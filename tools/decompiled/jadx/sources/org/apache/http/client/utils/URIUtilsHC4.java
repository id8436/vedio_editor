package org.apache.http.client.utils;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Stack;
import org.apache.commons.io.IOUtils;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class URIUtilsHC4 {
    @Deprecated
    public static URI createURI(String str, String str2, int i, String str3, String str4, String str5) throws URISyntaxException {
        StringBuilder sb = new StringBuilder();
        if (str2 != null) {
            if (str != null) {
                sb.append(str);
                sb.append("://");
            }
            sb.append(str2);
            if (i > 0) {
                sb.append(':');
                sb.append(i);
            }
        }
        if (str3 == null || !str3.startsWith(URIUtil.SLASH)) {
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
        }
        if (str3 != null) {
            sb.append(str3);
        }
        if (str4 != null) {
            sb.append('?');
            sb.append(str4);
        }
        if (str5 != null) {
            sb.append('#');
            sb.append(str5);
        }
        return new URI(sb.toString());
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost, boolean z) throws URISyntaxException {
        Args.notNull(uri, "URI");
        if (!uri.isOpaque()) {
            URIBuilder uRIBuilder = new URIBuilder(uri);
            if (httpHost != null) {
                uRIBuilder.setScheme(httpHost.getSchemeName());
                uRIBuilder.setHost(httpHost.getHostName());
                uRIBuilder.setPort(httpHost.getPort());
            } else {
                uRIBuilder.setScheme(null);
                uRIBuilder.setHost(null);
                uRIBuilder.setPort(-1);
            }
            if (z) {
                uRIBuilder.setFragment(null);
            }
            if (TextUtils.isEmpty(uRIBuilder.getPath())) {
                uRIBuilder.setPath(URIUtil.SLASH);
            }
            return uRIBuilder.build();
        }
        return uri;
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost) throws URISyntaxException {
        return rewriteURI(uri, httpHost, false);
    }

    public static URI rewriteURI(URI uri) throws URISyntaxException {
        Args.notNull(uri, "URI");
        if (!uri.isOpaque()) {
            URIBuilder uRIBuilder = new URIBuilder(uri);
            if (uRIBuilder.getUserInfo() != null) {
                uRIBuilder.setUserInfo(null);
            }
            if (TextUtils.isEmpty(uRIBuilder.getPath())) {
                uRIBuilder.setPath(URIUtil.SLASH);
            }
            if (uRIBuilder.getHost() != null) {
                uRIBuilder.setHost(uRIBuilder.getHost().toLowerCase(Locale.ENGLISH));
            }
            uRIBuilder.setFragment(null);
            return uRIBuilder.build();
        }
        return uri;
    }

    public static URI resolve(URI uri, String str) {
        return resolve(uri, URI.create(str));
    }

    public static URI resolve(URI uri, URI uri2) {
        Args.notNull(uri, "Base URI");
        Args.notNull(uri2, "Reference URI");
        String string = uri2.toString();
        if (string.startsWith("?")) {
            return resolveReferenceStartingWithQueryString(uri, uri2);
        }
        boolean z = string.length() == 0;
        if (z) {
            uri2 = URI.create("#");
        }
        URI uriResolve = uri.resolve(uri2);
        if (z) {
            String string2 = uriResolve.toString();
            uriResolve = URI.create(string2.substring(0, string2.indexOf(35)));
        }
        return normalizeSyntax(uriResolve);
    }

    private static URI resolveReferenceStartingWithQueryString(URI uri, URI uri2) {
        String string = uri.toString();
        if (string.indexOf(63) > -1) {
            string = string.substring(0, string.indexOf(63));
        }
        return URI.create(string + uri2.toString());
    }

    private static URI normalizeSyntax(URI uri) {
        if (uri.isOpaque() || uri.getAuthority() == null) {
            return uri;
        }
        Args.check(uri.isAbsolute(), "Base URI must be absolute");
        String path = uri.getPath() == null ? "" : uri.getPath();
        String[] strArrSplit = path.split(URIUtil.SLASH);
        Stack stack = new Stack();
        for (String str : strArrSplit) {
            if (str.length() != 0 && !".".equals(str)) {
                if ("..".equals(str)) {
                    if (!stack.isEmpty()) {
                        stack.pop();
                    }
                } else {
                    stack.push(str);
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = stack.iterator();
        while (it.hasNext()) {
            sb.append(IOUtils.DIR_SEPARATOR_UNIX).append((String) it.next());
        }
        if (path.lastIndexOf(47) == path.length() - 1) {
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
        }
        try {
            URI uri2 = new URI(uri.getScheme().toLowerCase(), uri.getAuthority().toLowerCase(), sb.toString(), null, null);
            if (uri.getQuery() != null || uri.getFragment() != null) {
                StringBuilder sb2 = new StringBuilder(uri2.toASCIIString());
                if (uri.getQuery() != null) {
                    sb2.append('?').append(uri.getRawQuery());
                }
                if (uri.getFragment() != null) {
                    sb2.append('#').append(uri.getRawFragment());
                }
                return URI.create(sb2.toString());
            }
            return uri2;
        } catch (URISyntaxException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.http.HttpHost extractHost(java.net.URI r9) {
        /*
            r3 = 0
            r6 = 0
            if (r9 != 0) goto L5
        L4:
            return r6
        L5:
            boolean r0 = r9.isAbsolute()
            if (r0 == 0) goto L79
            int r4 = r9.getPort()
            java.lang.String r0 = r9.getHost()
            if (r0 != 0) goto L68
            java.lang.String r0 = r9.getAuthority()
            if (r0 == 0) goto L68
            r1 = 64
            int r1 = r0.indexOf(r1)
            if (r1 < 0) goto L7f
            int r2 = r0.length()
            int r5 = r1 + 1
            if (r2 <= r5) goto L54
            int r1 = r1 + 1
            java.lang.String r5 = r0.substring(r1)
        L31:
            if (r5 == 0) goto L7d
            r0 = 58
            int r7 = r5.indexOf(r0)
            if (r7 < 0) goto L7d
            int r1 = r7 + 1
            r0 = r1
            r2 = r3
        L3f:
            int r8 = r5.length()
            if (r0 >= r8) goto L56
            char r8 = r5.charAt(r0)
            boolean r8 = java.lang.Character.isDigit(r8)
            if (r8 == 0) goto L56
            int r2 = r2 + 1
            int r0 = r0 + 1
            goto L3f
        L54:
            r5 = r6
            goto L31
        L56:
            if (r2 <= 0) goto L7b
            int r0 = r1 + r2
            java.lang.String r0 = r5.substring(r1, r0)     // Catch: java.lang.NumberFormatException -> L76
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L76
        L62:
            java.lang.String r1 = r5.substring(r3, r7)
            r4 = r0
            r0 = r1
        L68:
            java.lang.String r2 = r9.getScheme()
            if (r0 == 0) goto L79
            org.apache.http.HttpHost r1 = new org.apache.http.HttpHost
            r1.<init>(r0, r4, r2)
            r0 = r1
        L74:
            r6 = r0
            goto L4
        L76:
            r0 = move-exception
            r0 = r4
            goto L62
        L79:
            r0 = r6
            goto L74
        L7b:
            r0 = r4
            goto L62
        L7d:
            r0 = r5
            goto L68
        L7f:
            r5 = r0
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.client.utils.URIUtilsHC4.extractHost(java.net.URI):org.apache.http.HttpHost");
    }

    public static URI resolve(URI uri, HttpHost httpHost, List<URI> list) throws URISyntaxException {
        URIBuilder uRIBuilder;
        Args.notNull(uri, "Request URI");
        if (list == null || list.isEmpty()) {
            uRIBuilder = new URIBuilder(uri);
        } else {
            URIBuilder uRIBuilder2 = new URIBuilder(list.get(list.size() - 1));
            String fragment = uRIBuilder2.getFragment();
            int size = list.size() - 1;
            while (fragment == null && size >= 0) {
                String fragment2 = list.get(size).getFragment();
                size--;
                fragment = fragment2;
            }
            uRIBuilder2.setFragment(fragment);
            uRIBuilder = uRIBuilder2;
        }
        if (uRIBuilder.getFragment() == null) {
            uRIBuilder.setFragment(uri.getFragment());
        }
        if (httpHost != null && !uRIBuilder.isAbsolute()) {
            uRIBuilder.setScheme(httpHost.getSchemeName());
            uRIBuilder.setHost(httpHost.getHostName());
            uRIBuilder.setPort(httpHost.getPort());
        }
        return uRIBuilder.build();
    }

    private URIUtilsHC4() {
    }
}
