package d;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: Dns.java */
/* JADX INFO: loaded from: classes3.dex */
final class y implements x {
    y() {
    }

    @Override // d.x
    public List<InetAddress> a(String str) throws UnknownHostException {
        if (str == null) {
            throw new UnknownHostException("hostname == null");
        }
        try {
            return Arrays.asList(InetAddress.getAllByName(str));
        } catch (NullPointerException e2) {
            UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + str);
            unknownHostException.initCause(e2);
            throw unknownHostException;
        }
    }
}
