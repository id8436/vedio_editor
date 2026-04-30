package com.adobe.creativesdk.foundation.adobeinternal.cloud;

import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;

/* JADX INFO: loaded from: classes.dex */
public class DecompressibleInputStream extends ObjectInputStream {
    public DecompressibleInputStream(InputStream inputStream) throws IOException {
        super(inputStream);
    }

    @Override // java.io.ObjectInputStream
    protected ObjectStreamClass readClassDescriptor() throws ClassNotFoundException, IOException {
        ObjectStreamClass classDescriptor = super.readClassDescriptor();
        try {
            ObjectStreamClass objectStreamClassLookup = ObjectStreamClass.lookup(Class.forName(classDescriptor.getName()));
            if (objectStreamClassLookup != null) {
                long serialVersionUID = objectStreamClassLookup.getSerialVersionUID();
                long serialVersionUID2 = classDescriptor.getSerialVersionUID();
                if (serialVersionUID2 != serialVersionUID) {
                    AdobeLogger.log(Level.DEBUG, DecompressibleInputStream.class.getSimpleName(), "Overriding serialized class version mismatch: local serialVersionUID = " + serialVersionUID + " stream serialVersionUID = " + serialVersionUID2);
                    return objectStreamClassLookup;
                }
            }
            return classDescriptor;
        } catch (ClassNotFoundException e2) {
            AdobeLogger.log(Level.DEBUG, DecompressibleInputStream.class.getSimpleName(), "No local class for " + classDescriptor.getName(), e2);
            return classDescriptor;
        }
    }
}
