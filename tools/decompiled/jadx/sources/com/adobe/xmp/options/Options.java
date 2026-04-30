package com.adobe.xmp.options;

import com.adobe.xmp.XMPException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Options {
    private int options = 0;
    private Map optionNames = null;

    protected abstract String defineOptionName(int i);

    protected abstract int getValidOptions();

    public Options() {
    }

    public Options(int i) throws XMPException {
        assertOptionsValid(i);
        setOptions(i);
    }

    public void clear() {
        this.options = 0;
    }

    public boolean isExactly(int i) {
        return getOptions() == i;
    }

    public boolean containsAllOptions(int i) {
        return (getOptions() & i) == i;
    }

    public boolean containsOneOf(int i) {
        return (getOptions() & i) != 0;
    }

    protected boolean getOption(int i) {
        return (this.options & i) != 0;
    }

    public void setOption(int i, boolean z) {
        this.options = z ? this.options | i : this.options & (i ^ (-1));
    }

    public int getOptions() {
        return this.options;
    }

    public void setOptions(int i) throws XMPException {
        assertOptionsValid(i);
        this.options = i;
    }

    public boolean equals(Object obj) {
        return getOptions() == ((Options) obj).getOptions();
    }

    public int hashCode() {
        return getOptions();
    }

    public String getOptionsString() {
        if (this.options != 0) {
            StringBuffer stringBuffer = new StringBuffer();
            int i = this.options;
            while (i != 0) {
                int i2 = (i - 1) & i;
                stringBuffer.append(getOptionName(i ^ i2));
                if (i2 != 0) {
                    stringBuffer.append(" | ");
                }
                i = i2;
            }
            return stringBuffer.toString();
        }
        return "<none>";
    }

    public String toString() {
        return "0x" + Integer.toHexString(this.options);
    }

    protected void assertConsistency(int i) throws XMPException {
    }

    private void assertOptionsValid(int i) throws XMPException {
        int validOptions = (getValidOptions() ^ (-1)) & i;
        if (validOptions == 0) {
            assertConsistency(i);
            return;
        }
        throw new XMPException("The option bit(s) 0x" + Integer.toHexString(validOptions) + " are invalid!", 103);
    }

    private String getOptionName(int i) {
        Map mapProcureOptionNames = procureOptionNames();
        Integer num = new Integer(i);
        String str = (String) mapProcureOptionNames.get(num);
        if (str == null) {
            String strDefineOptionName = defineOptionName(i);
            if (strDefineOptionName != null) {
                mapProcureOptionNames.put(num, strDefineOptionName);
                return strDefineOptionName;
            }
            return "<option name not defined>";
        }
        return str;
    }

    private Map procureOptionNames() {
        if (this.optionNames == null) {
            this.optionNames = new HashMap();
        }
        return this.optionNames;
    }
}
