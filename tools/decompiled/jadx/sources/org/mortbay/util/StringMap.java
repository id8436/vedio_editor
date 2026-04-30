package org.mortbay.util;

import com.google.gdata.data.Category;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class StringMap extends AbstractMap implements Externalizable {
    public static final boolean CASE_INSENSTIVE = true;
    protected static final int __HASH_WIDTH = 17;
    protected HashSet _entrySet;
    protected boolean _ignoreCase;
    protected NullEntry _nullEntry;
    protected Object _nullValue;
    protected Node _root;
    protected Set _umEntrySet;
    protected int _width;

    /* JADX INFO: renamed from: org.mortbay.util.StringMap$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    public StringMap() {
        this._width = 17;
        this._root = new Node();
        this._ignoreCase = false;
        this._nullEntry = null;
        this._nullValue = null;
        this._entrySet = new HashSet(3);
        this._umEntrySet = Collections.unmodifiableSet(this._entrySet);
    }

    public StringMap(boolean z) {
        this();
        this._ignoreCase = z;
    }

    public StringMap(boolean z, int i) {
        this();
        this._ignoreCase = z;
        this._width = i;
    }

    public void setIgnoreCase(boolean z) {
        if (this._root._children != null) {
            throw new IllegalStateException("Must be set before first put");
        }
        this._ignoreCase = z;
    }

    public boolean isIgnoreCase() {
        return this._ignoreCase;
    }

    public void setWidth(int i) {
        this._width = i;
    }

    public int getWidth() {
        return this._width;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        return obj == null ? put((String) null, obj2) : put(obj.toString(), obj2);
    }

    public Object put(String str, Object obj) {
        int i;
        Node node;
        int i2;
        Node node2;
        int i3;
        if (str == null) {
            Object obj2 = this._nullValue;
            this._nullValue = obj;
            if (this._nullEntry == null) {
                this._nullEntry = new NullEntry(this, null);
                this._entrySet.add(this._nullEntry);
            }
            return obj2;
        }
        int i4 = 0;
        Node node3 = null;
        int i5 = -1;
        Node node4 = this._root;
        Node node5 = null;
        while (true) {
            if (i4 >= str.length()) {
                break;
            }
            char cCharAt = str.charAt(i4);
            if (i5 == -1) {
                node = node4;
                node3 = null;
                i = 0;
                node4 = node4._children == null ? null : node4._children[cCharAt % this._width];
            } else {
                i = i5;
                node = node5;
            }
            while (node4 != null) {
                if (node4._char[i] == cCharAt || (this._ignoreCase && node4._ochar[i] == cCharAt)) {
                    int i6 = i + 1;
                    if (i6 == node4._char.length) {
                        i3 = i4;
                        i2 = -1;
                        node2 = null;
                    } else {
                        i2 = i6;
                        i3 = i4;
                        node2 = null;
                    }
                    int i7 = i3 + 1;
                    node5 = node;
                    i5 = i2;
                    node3 = node2;
                    i4 = i7;
                } else if (i == 0) {
                    node3 = node4;
                    node4 = node4._next;
                } else {
                    node4.split(this, i);
                    i3 = i4 - 1;
                    node2 = node3;
                    i2 = -1;
                    int i72 = i3 + 1;
                    node5 = node;
                    i5 = i2;
                    node3 = node2;
                    i4 = i72;
                }
            }
            node4 = new Node(this._ignoreCase, str, i4);
            if (node3 != null) {
                node3._next = node4;
                i5 = i;
            } else if (node != null) {
                if (node._children == null) {
                    node._children = new Node[this._width];
                }
                node._children[cCharAt % this._width] = node4;
                int i8 = node4._ochar[0] % this._width;
                if (node4._ochar != null && node4._char[0] % this._width != i8) {
                    if (node._children[i8] == null) {
                        node._children[i8] = node4;
                    } else {
                        Node node6 = node._children[i8];
                        while (node6._next != null) {
                            node6 = node6._next;
                        }
                        node6._next = node4;
                    }
                }
                i5 = i;
            } else {
                this._root = node4;
                i5 = i;
            }
        }
        if (node4 == null) {
            return null;
        }
        if (i5 > 0) {
            node4.split(this, i5);
        }
        Object obj3 = node4._value;
        node4._key = str;
        node4._value = obj;
        this._entrySet.add(node4);
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        if (obj == null) {
            return this._nullValue;
        }
        if (obj instanceof String) {
            return get((String) obj);
        }
        return get(obj.toString());
    }

    public Object get(String str) {
        if (str == null) {
            return this._nullValue;
        }
        Map.Entry entry = getEntry(str, 0, str.length());
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    public Map.Entry getEntry(String str, int i, int i2) {
        Node node;
        int i3;
        if (str == null) {
            return this._nullEntry;
        }
        Node node2 = this._root;
        int i4 = 0;
        int i5 = -1;
        while (i4 < i2) {
            char cCharAt = str.charAt(i + i4);
            if (i5 == -1) {
                node = node2._children == null ? null : node2._children[cCharAt % this._width];
                i3 = 0;
            } else {
                int i6 = i5;
                node = node2;
                i3 = i6;
            }
            while (node != null) {
                if (node._char[i3] == cCharAt || (this._ignoreCase && node._ochar[i3] == cCharAt)) {
                    int i7 = i3 + 1;
                    if (i7 == node._char.length) {
                        i7 = -1;
                    }
                    i4++;
                    int i8 = i7;
                    node2 = node;
                    i5 = i8;
                } else {
                    if (i3 > 0) {
                        return null;
                    }
                    node = node._next;
                }
            }
            return null;
        }
        if (i5 > 0) {
            return null;
        }
        if (node2 == null || node2._key != null) {
            return node2;
        }
        return null;
    }

    public Map.Entry getEntry(char[] cArr, int i, int i2) {
        Node node;
        int i3;
        if (cArr == null) {
            return this._nullEntry;
        }
        Node node2 = this._root;
        int i4 = 0;
        int i5 = -1;
        while (i4 < i2) {
            char c2 = cArr[i + i4];
            if (i5 == -1) {
                node = node2._children == null ? null : node2._children[c2 % this._width];
                i3 = 0;
            } else {
                int i6 = i5;
                node = node2;
                i3 = i6;
            }
            while (node != null) {
                if (node._char[i3] == c2 || (this._ignoreCase && node._ochar[i3] == c2)) {
                    int i7 = i3 + 1;
                    if (i7 == node._char.length) {
                        i7 = -1;
                    }
                    i4++;
                    int i8 = i7;
                    node2 = node;
                    i5 = i8;
                } else {
                    if (i3 > 0) {
                        return null;
                    }
                    node = node._next;
                }
            }
            return null;
        }
        if (i5 > 0) {
            return null;
        }
        if (node2 == null || node2._key != null) {
            return node2;
        }
        return null;
    }

    public Map.Entry getBestEntry(byte[] bArr, int i, int i2) {
        Node node;
        int i3;
        if (bArr == null) {
            return this._nullEntry;
        }
        Node node2 = this._root;
        int i4 = 0;
        int i5 = -1;
        while (i4 < i2) {
            char c2 = (char) bArr[i + i4];
            if (i5 == -1) {
                node = node2._children == null ? null : node2._children[c2 % this._width];
                if (node == null && i4 > 0) {
                    return node2;
                }
                i3 = 0;
            } else {
                int i6 = i5;
                node = node2;
                i3 = i6;
            }
            while (node != null) {
                if (node._char[i3] == c2 || (this._ignoreCase && node._ochar[i3] == c2)) {
                    int i7 = i3 + 1;
                    if (i7 == node._char.length) {
                        i7 = -1;
                    }
                    i4++;
                    int i8 = i7;
                    node2 = node;
                    i5 = i8;
                } else {
                    if (i3 > 0) {
                        return null;
                    }
                    node = node._next;
                }
            }
            return null;
        }
        if (i5 > 0) {
            return null;
        }
        if (node2 == null || node2._key != null) {
            return node2;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        return obj == null ? remove((String) null) : remove(obj.toString());
    }

    public Object remove(String str) {
        if (str == null) {
            Object obj = this._nullValue;
            if (this._nullEntry != null) {
                this._entrySet.remove(this._nullEntry);
                this._nullEntry = null;
                this._nullValue = null;
            }
            return obj;
        }
        int i = -1;
        Node node = this._root;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (i == -1) {
                node = node._children == null ? null : node._children[cCharAt % this._width];
                i = 0;
            }
            while (node != null) {
                if (node._char[i] == cCharAt || (this._ignoreCase && node._ochar[i] == cCharAt)) {
                    i++;
                    if (i == node._char.length) {
                        i = -1;
                    }
                } else {
                    if (i > 0) {
                        return null;
                    }
                    node = node._next;
                }
            }
            return null;
        }
        if (i > 0) {
            return null;
        }
        if (node != null && node._key == null) {
            return null;
        }
        Object obj2 = node._value;
        this._entrySet.remove(node);
        node._value = null;
        node._key = null;
        return obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        return this._umEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this._entrySet.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this._entrySet.isEmpty();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return this._nullEntry != null;
        }
        return getEntry(obj.toString(), 0, obj == null ? 0 : obj.toString().length()) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this._root = new Node();
        this._nullEntry = null;
        this._nullValue = null;
        this._entrySet.clear();
    }

    class Node implements Map.Entry {
        char[] _char;
        Node[] _children;
        String _key;
        Node _next;
        char[] _ochar;
        Object _value;

        Node() {
        }

        Node(boolean z, String str, int i) {
            int length = str.length() - i;
            this._char = new char[length];
            this._ochar = new char[length];
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i + i2);
                this._char[i2] = cCharAt;
                if (z) {
                    if (Character.isUpperCase(cCharAt)) {
                        cCharAt = Character.toLowerCase(cCharAt);
                    } else if (Character.isLowerCase(cCharAt)) {
                        cCharAt = Character.toUpperCase(cCharAt);
                    }
                    this._ochar[i2] = cCharAt;
                }
            }
        }

        Node split(StringMap stringMap, int i) {
            Node node = new Node();
            int length = this._char.length - i;
            char[] cArr = this._char;
            this._char = new char[i];
            node._char = new char[length];
            System.arraycopy(cArr, 0, this._char, 0, i);
            System.arraycopy(cArr, i, node._char, 0, length);
            if (this._ochar != null) {
                char[] cArr2 = this._ochar;
                this._ochar = new char[i];
                node._ochar = new char[length];
                System.arraycopy(cArr2, 0, this._ochar, 0, i);
                System.arraycopy(cArr2, i, node._ochar, 0, length);
            }
            node._key = this._key;
            node._value = this._value;
            this._key = null;
            this._value = null;
            if (stringMap._entrySet.remove(this)) {
                stringMap._entrySet.add(node);
            }
            node._children = this._children;
            this._children = new Node[stringMap._width];
            this._children[node._char[0] % stringMap._width] = node;
            if (node._ochar != null && this._children[node._ochar[0] % stringMap._width] != node) {
                this._children[node._ochar[0] % stringMap._width] = node;
            }
            return node;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this._key;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this._value;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = this._value;
            this._value = obj;
            return obj2;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            synchronized (stringBuffer) {
                toString(stringBuffer);
            }
            return stringBuffer.toString();
        }

        private void toString(StringBuffer stringBuffer) {
            stringBuffer.append("{[");
            if (this._char == null) {
                stringBuffer.append('-');
            } else {
                for (int i = 0; i < this._char.length; i++) {
                    stringBuffer.append(this._char[i]);
                }
            }
            stringBuffer.append(':');
            stringBuffer.append(this._key);
            stringBuffer.append('=');
            stringBuffer.append(this._value);
            stringBuffer.append(']');
            if (this._children != null) {
                for (int i2 = 0; i2 < this._children.length; i2++) {
                    stringBuffer.append('|');
                    if (this._children[i2] != null) {
                        this._children[i2].toString(stringBuffer);
                    } else {
                        stringBuffer.append("-");
                    }
                }
            }
            stringBuffer.append(Category.SCHEME_SUFFIX);
            if (this._next != null) {
                stringBuffer.append(",\n");
                this._next.toString(stringBuffer);
            }
        }
    }

    class NullEntry implements Map.Entry {
        private final StringMap this$0;

        private NullEntry(StringMap stringMap) {
            this.this$0 = stringMap;
        }

        NullEntry(StringMap stringMap, AnonymousClass1 anonymousClass1) {
            this(stringMap);
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return null;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.this$0._nullValue;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = this.this$0._nullValue;
            this.this$0._nullValue = obj;
            return obj2;
        }

        public String toString() {
            return new StringBuffer().append("[:null=").append(this.this$0._nullValue).append("]").toString();
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        HashMap map = new HashMap(this);
        objectOutput.writeBoolean(this._ignoreCase);
        objectOutput.writeObject(map);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        boolean z = objectInput.readBoolean();
        HashMap map = (HashMap) objectInput.readObject();
        setIgnoreCase(z);
        putAll(map);
    }
}
