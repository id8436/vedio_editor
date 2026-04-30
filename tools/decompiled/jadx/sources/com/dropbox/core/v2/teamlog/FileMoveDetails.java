package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.RelocateAssetReferencesLogInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FileMoveDetails {
    protected final List<RelocateAssetReferencesLogInfo> relocateActionDetails;

    public FileMoveDetails(List<RelocateAssetReferencesLogInfo> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'relocateActionDetails' is null");
        }
        Iterator<RelocateAssetReferencesLogInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'relocateActionDetails' is null");
            }
        }
        this.relocateActionDetails = list;
    }

    public List<RelocateAssetReferencesLogInfo> getRelocateActionDetails() {
        return this.relocateActionDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.relocateActionDetails});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileMoveDetails fileMoveDetails = (FileMoveDetails) obj;
        return this.relocateActionDetails == fileMoveDetails.relocateActionDetails || this.relocateActionDetails.equals(fileMoveDetails.relocateActionDetails);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FileMoveDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        /* JADX WARN: Failed to analyze thrown exceptions
        java.util.ConcurrentModificationException
        	at java.base/java.util.HashMap$HashIterator.nextNode(HashMap.java:1597)
        	at java.base/java.util.HashMap$KeyIterator.next(HashMap.java:1620)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.mergeExceptions(MethodThrowsVisitor.java:100)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:86)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
         */
        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileMoveDetails fileMoveDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("relocate_action_details");
            StoneSerializers.list(RelocateAssetReferencesLogInfo.Serializer.INSTANCE).serialize(fileMoveDetails.relocateActionDetails, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileMoveDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("relocate_action_details".equals(strD)) {
                        list = (List) StoneSerializers.list(RelocateAssetReferencesLogInfo.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"relocate_action_details\" missing.");
                }
                FileMoveDetails fileMoveDetails = new FileMoveDetails(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileMoveDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
