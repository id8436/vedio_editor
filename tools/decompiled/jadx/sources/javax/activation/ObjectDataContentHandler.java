package javax.activation;

import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: DataHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class ObjectDataContentHandler implements DataContentHandler {
    private DataContentHandler dch;
    private String mimeType;
    private Object obj;
    private DataFlavor[] transferFlavors = null;

    public ObjectDataContentHandler(DataContentHandler dataContentHandler, Object obj, String str) {
        this.dch = null;
        this.obj = obj;
        this.mimeType = str;
        this.dch = dataContentHandler;
    }

    public DataContentHandler getDCH() {
        return this.dch;
    }

    @Override // javax.activation.DataContentHandler
    public DataFlavor[] getTransferDataFlavors() {
        if (this.transferFlavors == null) {
            if (this.dch != null) {
                this.transferFlavors = this.dch.getTransferDataFlavors();
            } else {
                this.transferFlavors = new DataFlavor[1];
                this.transferFlavors[0] = new ActivationDataFlavor(this.obj.getClass(), this.mimeType, this.mimeType);
            }
        }
        return this.transferFlavors;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.awt.datatransfer.UnsupportedFlavorException */
    @Override // javax.activation.DataContentHandler
    public Object getTransferData(DataFlavor dataFlavor, DataSource dataSource) throws UnsupportedFlavorException, IOException {
        if (this.dch != null) {
            return this.dch.getTransferData(dataFlavor, dataSource);
        }
        if (dataFlavor.equals(this.transferFlavors[0])) {
            return this.obj;
        }
        throw new UnsupportedFlavorException(dataFlavor);
    }

    @Override // javax.activation.DataContentHandler
    public Object getContent(DataSource dataSource) {
        return this.obj;
    }

    @Override // javax.activation.DataContentHandler
    public void writeTo(Object obj, String str, OutputStream outputStream) throws IOException {
        if (this.dch != null) {
            this.dch.writeTo(obj, str, outputStream);
            return;
        }
        throw new UnsupportedDataTypeException(new StringBuffer().append("no object DCH for MIME type ").append(this.mimeType).toString());
    }
}
