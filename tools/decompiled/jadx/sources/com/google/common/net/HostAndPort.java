package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import java.io.Serializable;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@Beta
@GwtCompatible
@Immutable
public final class HostAndPort implements Serializable {
    private static final int NO_PORT = -1;
    private static final long serialVersionUID = 0;
    private final boolean hasBracketlessColons;
    private final String host;
    private final int port;

    private HostAndPort(String str, int i, boolean z) {
        this.host = str;
        this.port = i;
        this.hasBracketlessColons = z;
    }

    public String getHostText() {
        return this.host;
    }

    public boolean hasPort() {
        return this.port >= 0;
    }

    public int getPort() {
        Preconditions.checkState(hasPort());
        return this.port;
    }

    public int getPortOrDefault(int i) {
        return hasPort() ? this.port : i;
    }

    public static HostAndPort fromParts(String str, int i) {
        Preconditions.checkArgument(isValidPort(i), "Port out of range: %s", Integer.valueOf(i));
        HostAndPort hostAndPortFromString = fromString(str);
        Preconditions.checkArgument(!hostAndPortFromString.hasPort(), "Host has a port: %s", str);
        return new HostAndPort(hostAndPortFromString.host, i, hostAndPortFromString.hasBracketlessColons);
    }

    public static HostAndPort fromHost(String str) {
        HostAndPort hostAndPortFromString = fromString(str);
        Preconditions.checkArgument(!hostAndPortFromString.hasPort(), "Host has a port: %s", str);
        return hostAndPortFromString;
    }

    public static HostAndPort fromString(String str) {
        boolean z;
        String strSubstring;
        int i;
        Preconditions.checkNotNull(str);
        String strSubstring2 = null;
        if (str.startsWith("[")) {
            String[] hostAndPortFromBracketedHost = getHostAndPortFromBracketedHost(str);
            strSubstring = hostAndPortFromBracketedHost[0];
            strSubstring2 = hostAndPortFromBracketedHost[1];
            z = false;
        } else {
            int iIndexOf = str.indexOf(58);
            if (iIndexOf >= 0 && str.indexOf(58, iIndexOf + 1) == -1) {
                strSubstring = str.substring(0, iIndexOf);
                strSubstring2 = str.substring(iIndexOf + 1);
                z = false;
            } else {
                z = iIndexOf >= 0;
                strSubstring = str;
            }
        }
        if (Strings.isNullOrEmpty(strSubstring2)) {
            i = -1;
        } else {
            Preconditions.checkArgument(!strSubstring2.startsWith("+"), "Unparseable port number: %s", str);
            try {
                int i2 = Integer.parseInt(strSubstring2);
                Preconditions.checkArgument(isValidPort(i2), "Port number out of range: %s", str);
                i = i2;
            } catch (NumberFormatException e2) {
                throw new IllegalArgumentException("Unparseable port number: " + str);
            }
        }
        return new HostAndPort(strSubstring, i, z);
    }

    private static String[] getHostAndPortFromBracketedHost(String str) {
        Preconditions.checkArgument(str.charAt(0) == '[', "Bracketed host-port string must start with a bracket: %s", str);
        int iIndexOf = str.indexOf(58);
        int iLastIndexOf = str.lastIndexOf(93);
        Preconditions.checkArgument(iIndexOf > -1 && iLastIndexOf > iIndexOf, "Invalid bracketed host/port: %s", str);
        String strSubstring = str.substring(1, iLastIndexOf);
        if (iLastIndexOf + 1 == str.length()) {
            return new String[]{strSubstring, ""};
        }
        Preconditions.checkArgument(str.charAt(iLastIndexOf + 1) == ':', "Only a colon may follow a close bracket: %s", str);
        for (int i = iLastIndexOf + 2; i < str.length(); i++) {
            Preconditions.checkArgument(Character.isDigit(str.charAt(i)), "Port must be numeric: %s", str);
        }
        return new String[]{strSubstring, str.substring(iLastIndexOf + 2)};
    }

    public HostAndPort withDefaultPort(int i) {
        Preconditions.checkArgument(isValidPort(i));
        return (hasPort() || this.port == i) ? this : new HostAndPort(this.host, i, this.hasBracketlessColons);
    }

    public HostAndPort requireBracketsForIPv6() {
        Preconditions.checkArgument(!this.hasBracketlessColons, "Possible bracketless IPv6 literal: %s", this.host);
        return this;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HostAndPort)) {
            return false;
        }
        HostAndPort hostAndPort = (HostAndPort) obj;
        return Objects.equal(this.host, hostAndPort.host) && this.port == hostAndPort.port && this.hasBracketlessColons == hostAndPort.hasBracketlessColons;
    }

    public int hashCode() {
        return Objects.hashCode(this.host, Integer.valueOf(this.port), Boolean.valueOf(this.hasBracketlessColons));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.host.length() + 8);
        if (this.host.indexOf(58) >= 0) {
            sb.append('[').append(this.host).append(']');
        } else {
            sb.append(this.host);
        }
        if (hasPort()) {
            sb.append(':').append(this.port);
        }
        return sb.toString();
    }

    private static boolean isValidPort(int i) {
        return i >= 0 && i <= 65535;
    }
}
