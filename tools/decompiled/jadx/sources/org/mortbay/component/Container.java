package org.mortbay.component;

import java.util.EventListener;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;

/* JADX INFO: loaded from: classes3.dex */
public class Container {
    private Object _listeners;

    /* JADX INFO: renamed from: org.mortbay.component.Container$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    public interface Listener extends EventListener {
        void add(Relationship relationship);

        void addBean(Object obj);

        void remove(Relationship relationship);

        void removeBean(Object obj);
    }

    public synchronized void addEventListener(Listener listener) {
        this._listeners = LazyList.add(this._listeners, listener);
    }

    public synchronized void removeEventListener(Listener listener) {
        this._listeners = LazyList.remove(this._listeners, listener);
    }

    public synchronized void update(Object obj, Object obj2, Object obj3, String str) {
        if (obj2 != null) {
            if (!obj2.equals(obj3)) {
                remove(obj, obj2, str);
            }
            if (obj3 != null && !obj3.equals(obj2)) {
                add(obj, obj3, str);
            }
        } else if (obj3 != null) {
            add(obj, obj3, str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001b A[Catch: all -> 0x0023, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x000e, B:10:0x0013, B:13:0x001b, B:14:0x001e), top: B:20:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void update(java.lang.Object r2, java.lang.Object r3, java.lang.Object r4, java.lang.String r5, boolean r6) {
        /*
            r1 = this;
            monitor-enter(r1)
            if (r3 == 0) goto L11
            boolean r0 = r3.equals(r4)     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto L11
            r1.remove(r2, r3, r5)     // Catch: java.lang.Throwable -> L23
            if (r6 == 0) goto L11
            r1.removeBean(r3)     // Catch: java.lang.Throwable -> L23
        L11:
            if (r4 == 0) goto L21
            boolean r0 = r4.equals(r3)     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto L21
            if (r6 == 0) goto L1e
            r1.addBean(r4)     // Catch: java.lang.Throwable -> L23
        L1e:
            r1.add(r2, r4, r5)     // Catch: java.lang.Throwable -> L23
        L21:
            monitor-exit(r1)
            return
        L23:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.component.Container.update(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.String, boolean):void");
    }

    public synchronized void update(Object obj, Object[] objArr, Object[] objArr2, String str) {
        update(obj, objArr, objArr2, str, false);
    }

    public synchronized void update(Object obj, Object[] objArr, Object[] objArr2, String str, boolean z) {
        Object[] objArr3;
        synchronized (this) {
            if (objArr2 != null) {
                Object[] objArr4 = new Object[objArr2.length];
                int length = objArr2.length;
                while (true) {
                    int i = length - 1;
                    if (length <= 0) {
                        break;
                    }
                    boolean z2 = true;
                    if (objArr != null) {
                        int length2 = objArr.length;
                        while (true) {
                            int i2 = length2 - 1;
                            if (length2 <= 0) {
                                break;
                            }
                            if (objArr2[i] == null || !objArr2[i].equals(objArr[i2])) {
                                length2 = i2;
                            } else {
                                objArr[i2] = null;
                                length2 = i2;
                                z2 = false;
                            }
                        }
                    }
                    if (z2) {
                        objArr4[i] = objArr2[i];
                    }
                    length = i;
                }
                objArr3 = objArr4;
            } else {
                objArr3 = null;
            }
            if (objArr != null) {
                int length3 = objArr.length;
                while (true) {
                    int i3 = length3 - 1;
                    if (length3 <= 0) {
                        break;
                    }
                    if (objArr[i3] != null) {
                        remove(obj, objArr[i3], str);
                        if (z) {
                            removeBean(objArr[i3]);
                            length3 = i3;
                        }
                    }
                    length3 = i3;
                }
            }
            if (objArr3 != null) {
                for (int i4 = 0; i4 < objArr3.length; i4++) {
                    if (objArr3[i4] != null) {
                        if (z) {
                            addBean(objArr3[i4]);
                        }
                        add(obj, objArr3[i4], str);
                    }
                }
            }
        }
    }

    public void addBean(Object obj) {
        if (this._listeners != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < LazyList.size(this._listeners)) {
                    ((Listener) LazyList.get(this._listeners, i2)).addBean(obj);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void removeBean(Object obj) {
        if (this._listeners != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < LazyList.size(this._listeners)) {
                    ((Listener) LazyList.get(this._listeners, i2)).removeBean(obj);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private void add(Object obj, Object obj2, String str) {
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("Container ").append(obj).append(" + ").append(obj2).append(" as ").append(str).toString());
        }
        if (this._listeners != null) {
            Relationship relationship = new Relationship(this, obj, obj2, str, null);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < LazyList.size(this._listeners)) {
                    ((Listener) LazyList.get(this._listeners, i2)).add(relationship);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private void remove(Object obj, Object obj2, String str) {
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("Container ").append(obj).append(" - ").append(obj2).append(" as ").append(str).toString());
        }
        if (this._listeners != null) {
            Relationship relationship = new Relationship(this, obj, obj2, str, null);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < LazyList.size(this._listeners)) {
                    ((Listener) LazyList.get(this._listeners, i2)).remove(relationship);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public class Relationship {
        private Object _child;
        private Container _container;
        private Object _parent;
        private String _relationship;

        Relationship(Container container, Object obj, Object obj2, String str, AnonymousClass1 anonymousClass1) {
            this(container, obj, obj2, str);
        }

        private Relationship(Container container, Object obj, Object obj2, String str) {
            this._container = container;
            this._parent = obj;
            this._child = obj2;
            this._relationship = str;
        }

        public Container getContainer() {
            return this._container;
        }

        public Object getChild() {
            return this._child;
        }

        public Object getParent() {
            return this._parent;
        }

        public String getRelationship() {
            return this._relationship;
        }

        public String toString() {
            return new StringBuffer().append(this._parent).append("---").append(this._relationship).append("-->").append(this._child).toString();
        }

        public int hashCode() {
            return this._parent.hashCode() + this._child.hashCode() + this._relationship.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof Relationship)) {
                return false;
            }
            Relationship relationship = (Relationship) obj;
            return relationship._parent == this._parent && relationship._child == this._child && relationship._relationship.equals(this._relationship);
        }
    }
}
