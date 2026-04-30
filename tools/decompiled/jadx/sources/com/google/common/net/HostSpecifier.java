package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.net.InetAddress;
import java.text.ParseException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public final class HostSpecifier {
    private final String canonicalForm;

    private HostSpecifier(String str) {
        this.canonicalForm = str;
    }

    public static HostSpecifier fromValid(String str) {
        InetAddress inetAddressForString;
        HostAndPort hostAndPortFromString = HostAndPort.fromString(str);
        Preconditions.checkArgument(!hostAndPortFromString.hasPort());
        String hostText = hostAndPortFromString.getHostText();
        try {
            inetAddressForString = InetAddresses.forString(hostText);
        } catch (IllegalArgumentException e2) {
            inetAddressForString = null;
        }
        if (inetAddressForString != null) {
            return new HostSpecifier(InetAddresses.toUriString(inetAddressForString));
        }
        InternetDomainName internetDomainNameFrom = InternetDomainName.from(hostText);
        if (internetDomainNameFrom.hasPublicSuffix()) {
            return new HostSpecifier(internetDomainNameFrom.toString());
        }
        throw new IllegalArgumentException("Domain name does not have a recognized public suffix: " + hostText);
    }

    public static HostSpecifier from(String str) throws ParseException {
        try {
            return fromValid(str);
        } catch (IllegalArgumentException e2) {
            ParseException parseException = new ParseException("Invalid host specifier: " + str, 0);
            parseException.initCause(e2);
            throw parseException;
        }
    }

    public static boolean isValid(String str) {
        try {
            fromValid(str);
            return true;
        } catch (IllegalArgumentException e2) {
            return false;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HostSpecifier) {
            return this.canonicalForm.equals(((HostSpecifier) obj).canonicalForm);
        }
        return false;
    }

    public int hashCode() {
        return this.canonicalForm.hashCode();
    }

    public String toString() {
        return this.canonicalForm;
    }
}
