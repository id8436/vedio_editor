package javax.mail;

import java.io.Serializable;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

/* JADX INFO: loaded from: classes3.dex */
public class Flags implements Serializable, Cloneable {
    private static final int ANSWERED_BIT = 1;
    private static final int DELETED_BIT = 2;
    private static final int DRAFT_BIT = 4;
    private static final int FLAGGED_BIT = 8;
    private static final int RECENT_BIT = 16;
    private static final int SEEN_BIT = 32;
    private static final int USER_BIT = Integer.MIN_VALUE;
    private static final long serialVersionUID = 6243590407214169028L;
    private int system_flags;
    private Hashtable user_flags;

    public final class Flag {
        public static final Flag ANSWERED = new Flag(1);
        public static final Flag DELETED = new Flag(2);
        public static final Flag DRAFT = new Flag(4);
        public static final Flag FLAGGED = new Flag(8);
        public static final Flag RECENT = new Flag(16);
        public static final Flag SEEN = new Flag(32);
        public static final Flag USER = new Flag(Integer.MIN_VALUE);
        private int bit;

        private Flag(int i) {
            this.bit = i;
        }
    }

    public Flags() {
        this.system_flags = 0;
        this.user_flags = null;
    }

    public Flags(Flags flags) {
        this.system_flags = 0;
        this.user_flags = null;
        this.system_flags = flags.system_flags;
        if (flags.user_flags != null) {
            this.user_flags = (Hashtable) flags.user_flags.clone();
        }
    }

    public Flags(Flag flag) {
        this.system_flags = 0;
        this.user_flags = null;
        this.system_flags |= flag.bit;
    }

    public Flags(String str) {
        this.system_flags = 0;
        this.user_flags = null;
        this.user_flags = new Hashtable(1);
        this.user_flags.put(str.toLowerCase(), str);
    }

    public void add(Flag flag) {
        this.system_flags |= flag.bit;
    }

    public void add(String str) {
        if (this.user_flags == null) {
            this.user_flags = new Hashtable(1);
        }
        this.user_flags.put(str.toLowerCase(), str);
    }

    public void add(Flags flags) {
        this.system_flags |= flags.system_flags;
        if (flags.user_flags != null) {
            if (this.user_flags == null) {
                this.user_flags = new Hashtable(1);
            }
            Enumeration enumerationKeys = flags.user_flags.keys();
            while (enumerationKeys.hasMoreElements()) {
                String str = (String) enumerationKeys.nextElement();
                this.user_flags.put(str, flags.user_flags.get(str));
            }
        }
    }

    public void remove(Flag flag) {
        this.system_flags &= flag.bit ^ (-1);
    }

    public void remove(String str) {
        if (this.user_flags != null) {
            this.user_flags.remove(str.toLowerCase());
        }
    }

    public void remove(Flags flags) {
        this.system_flags &= flags.system_flags ^ (-1);
        if (flags.user_flags != null && this.user_flags != null) {
            Enumeration enumerationKeys = flags.user_flags.keys();
            while (enumerationKeys.hasMoreElements()) {
                this.user_flags.remove(enumerationKeys.nextElement());
            }
        }
    }

    public boolean contains(Flag flag) {
        return (this.system_flags & flag.bit) != 0;
    }

    public boolean contains(String str) {
        if (this.user_flags == null) {
            return false;
        }
        return this.user_flags.containsKey(str.toLowerCase());
    }

    public boolean contains(Flags flags) {
        if ((flags.system_flags & this.system_flags) != flags.system_flags) {
            return false;
        }
        if (flags.user_flags != null) {
            if (this.user_flags == null) {
                return false;
            }
            Enumeration enumerationKeys = flags.user_flags.keys();
            while (enumerationKeys.hasMoreElements()) {
                if (!this.user_flags.containsKey(enumerationKeys.nextElement())) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Flags)) {
            return false;
        }
        Flags flags = (Flags) obj;
        if (flags.system_flags != this.system_flags) {
            return false;
        }
        if (flags.user_flags == null && this.user_flags == null) {
            return true;
        }
        if (flags.user_flags == null || this.user_flags == null || flags.user_flags.size() != this.user_flags.size()) {
            return false;
        }
        Enumeration enumerationKeys = flags.user_flags.keys();
        while (enumerationKeys.hasMoreElements()) {
            if (!this.user_flags.containsKey(enumerationKeys.nextElement())) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int iHashCode = this.system_flags;
        if (this.user_flags == null) {
            return iHashCode;
        }
        Enumeration enumerationKeys = this.user_flags.keys();
        while (true) {
            int i = iHashCode;
            if (enumerationKeys.hasMoreElements()) {
                iHashCode = ((String) enumerationKeys.nextElement()).hashCode() + i;
            } else {
                return i;
            }
        }
    }

    public Flag[] getSystemFlags() {
        Vector vector = new Vector();
        if ((this.system_flags & 1) != 0) {
            vector.addElement(Flag.ANSWERED);
        }
        if ((this.system_flags & 2) != 0) {
            vector.addElement(Flag.DELETED);
        }
        if ((this.system_flags & 4) != 0) {
            vector.addElement(Flag.DRAFT);
        }
        if ((this.system_flags & 8) != 0) {
            vector.addElement(Flag.FLAGGED);
        }
        if ((this.system_flags & 16) != 0) {
            vector.addElement(Flag.RECENT);
        }
        if ((this.system_flags & 32) != 0) {
            vector.addElement(Flag.SEEN);
        }
        if ((this.system_flags & Integer.MIN_VALUE) != 0) {
            vector.addElement(Flag.USER);
        }
        Flag[] flagArr = new Flag[vector.size()];
        vector.copyInto(flagArr);
        return flagArr;
    }

    public String[] getUserFlags() {
        Vector vector = new Vector();
        if (this.user_flags != null) {
            Enumeration enumerationElements = this.user_flags.elements();
            while (enumerationElements.hasMoreElements()) {
                vector.addElement(enumerationElements.nextElement());
            }
        }
        String[] strArr = new String[vector.size()];
        vector.copyInto(strArr);
        return strArr;
    }

    public Object clone() {
        return new Flags(this);
    }
}
