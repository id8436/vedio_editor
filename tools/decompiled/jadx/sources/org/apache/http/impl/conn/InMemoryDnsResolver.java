package org.apache.http.impl.conn;

import android.util.Log;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.conn.DnsResolver;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
public class InMemoryDnsResolver implements DnsResolver {
    private static final String TAG = "HttpClient";
    private final Map<String, InetAddress[]> dnsMap = new ConcurrentHashMap();

    public void add(String str, InetAddress... inetAddressArr) {
        Args.notNull(str, "Host name");
        Args.notNull(inetAddressArr, "Array of IP addresses");
        this.dnsMap.put(str, inetAddressArr);
    }

    @Override // org.apache.http.conn.DnsResolver
    public InetAddress[] resolve(String str) throws UnknownHostException {
        InetAddress[] inetAddressArr = this.dnsMap.get(str);
        if (Log.isLoggable(TAG, 4)) {
            Log.i(TAG, "Resolving " + str + " to " + Arrays.deepToString(inetAddressArr));
        }
        if (inetAddressArr == null) {
            throw new UnknownHostException(str + " cannot be resolved");
        }
        return inetAddressArr;
    }
}
